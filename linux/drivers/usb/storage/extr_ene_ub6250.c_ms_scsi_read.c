
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct us_data {scalar_t__ extra; scalar_t__ iobuf; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;
struct TYPE_4__ {int PagesPerBlock; } ;
struct TYPE_3__ {scalar_t__ IsMSPro; } ;
struct ene_ub6250_info {int bl_num; TYPE_2__ MS_Lib; TYPE_1__ MS_Status; } ;
struct bulk_cb_wrap {int DataTransferLength; int* CDB; void* Flags; void* Signature; } ;


 int FDIR_READ ;
 int GFP_KERNEL ;
 int MSP_RW_PATTERN ;
 int MS_BYTES_PER_PAGE ;
 int MS_RW_PATTERN ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_XFER_GOOD ;
 int US_BULK_CB_SIGN ;
 void* US_BULK_FLAG_IN ;
 void* cpu_to_le32 (int ) ;
 int ene_load_bincode (struct us_data*,int ) ;
 int ene_send_scsi_cmd (struct us_data*,int ,void*,int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memset (struct bulk_cb_wrap*,int ,int) ;
 int ms_libconv_to_physical (struct ene_ub6250_info*,int) ;
 int pr_info (char*,...) ;
 void* scsi_sglist (struct scsi_cmnd*) ;
 int usb_stor_dbg (struct us_data*,char*) ;
 int usb_stor_set_xfer_buf (void*,int,struct scsi_cmnd*) ;

__attribute__((used)) static int ms_scsi_read(struct us_data *us, struct scsi_cmnd *srb)
{
 int result;
 unsigned char *cdb = srb->cmnd;
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 u32 bn = ((cdb[2] << 24) & 0xff000000) | ((cdb[3] << 16) & 0x00ff0000) |
  ((cdb[4] << 8) & 0x0000ff00) | ((cdb[5] << 0) & 0x000000ff);
 u16 blen = ((cdb[7] << 8) & 0xff00) | ((cdb[8] << 0) & 0x00ff);
 u32 blenByte = blen * 0x200;

 if (bn > info->bl_num)
  return USB_STOR_TRANSPORT_ERROR;

 if (info->MS_Status.IsMSPro) {
  result = ene_load_bincode(us, MSP_RW_PATTERN);
  if (result != USB_STOR_XFER_GOOD) {
   usb_stor_dbg(us, "Load MPS RW pattern Fail !!\n");
   return USB_STOR_TRANSPORT_ERROR;
  }


  memset(bcb, 0, sizeof(struct bulk_cb_wrap));
  bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
  bcb->DataTransferLength = blenByte;
  bcb->Flags = US_BULK_FLAG_IN;
  bcb->CDB[0] = 0xF1;
  bcb->CDB[1] = 0x02;
  bcb->CDB[5] = (unsigned char)(bn);
  bcb->CDB[4] = (unsigned char)(bn>>8);
  bcb->CDB[3] = (unsigned char)(bn>>16);
  bcb->CDB[2] = (unsigned char)(bn>>24);

  result = ene_send_scsi_cmd(us, FDIR_READ, scsi_sglist(srb), 1);
 } else {
  void *buf;
  int offset = 0;
  u16 phyblk, logblk;
  u8 PageNum;
  u16 len;
  u32 blkno;

  buf = kmalloc(blenByte, GFP_KERNEL);
  if (buf == ((void*)0))
   return USB_STOR_TRANSPORT_ERROR;

  result = ene_load_bincode(us, MS_RW_PATTERN);
  if (result != USB_STOR_XFER_GOOD) {
   pr_info("Load MS RW pattern Fail !!\n");
   result = USB_STOR_TRANSPORT_ERROR;
   goto exit;
  }

  logblk = (u16)(bn / info->MS_Lib.PagesPerBlock);
  PageNum = (u8)(bn % info->MS_Lib.PagesPerBlock);

  while (1) {
   if (blen > (info->MS_Lib.PagesPerBlock-PageNum))
    len = info->MS_Lib.PagesPerBlock-PageNum;
   else
    len = blen;

   phyblk = ms_libconv_to_physical(info, logblk);
   blkno = phyblk * 0x20 + PageNum;


   memset(bcb, 0, sizeof(struct bulk_cb_wrap));
   bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
   bcb->DataTransferLength = 0x200 * len;
   bcb->Flags = US_BULK_FLAG_IN;
   bcb->CDB[0] = 0xF1;
   bcb->CDB[1] = 0x02;
   bcb->CDB[5] = (unsigned char)(blkno);
   bcb->CDB[4] = (unsigned char)(blkno>>8);
   bcb->CDB[3] = (unsigned char)(blkno>>16);
   bcb->CDB[2] = (unsigned char)(blkno>>24);

   result = ene_send_scsi_cmd(us, FDIR_READ, buf+offset, 0);
   if (result != USB_STOR_XFER_GOOD) {
    pr_info("MS_SCSI_Read --- result = %x\n", result);
    result = USB_STOR_TRANSPORT_ERROR;
    goto exit;
   }

   blen -= len;
   if (blen <= 0)
    break;
   logblk++;
   PageNum = 0;
   offset += MS_BYTES_PER_PAGE*len;
  }
  usb_stor_set_xfer_buf(buf, blenByte, srb);
exit:
  kfree(buf);
 }
 return result;
}
