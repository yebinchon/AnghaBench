
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct us_data {scalar_t__ extra; scalar_t__ iobuf; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;
struct TYPE_2__ {scalar_t__ HiCapacity; } ;
struct ene_ub6250_info {int bl_num; TYPE_1__ SD_Status; } ;
struct bulk_cb_wrap {int DataTransferLength; int Flags; int* CDB; int Signature; } ;


 int FDIR_WRITE ;
 int SD_RW_PATTERN ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_XFER_GOOD ;
 int US_BULK_CB_SIGN ;
 int cpu_to_le32 (int ) ;
 int ene_load_bincode (struct us_data*,int ) ;
 int ene_send_scsi_cmd (struct us_data*,int ,int ,int) ;
 int memset (struct bulk_cb_wrap*,int ,int) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int usb_stor_dbg (struct us_data*,char*) ;

__attribute__((used)) static int sd_scsi_write(struct us_data *us, struct scsi_cmnd *srb)
{
 int result;
 unsigned char *cdb = srb->cmnd;
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 u32 bn = ((cdb[2] << 24) & 0xff000000) | ((cdb[3] << 16) & 0x00ff0000) |
   ((cdb[4] << 8) & 0x0000ff00) | ((cdb[5] << 0) & 0x000000ff);
 u16 blen = ((cdb[7] << 8) & 0xff00) | ((cdb[8] << 0) & 0x00ff);
 u32 bnByte = bn * 0x200;
 u32 blenByte = blen * 0x200;

 if (bn > info->bl_num)
  return USB_STOR_TRANSPORT_ERROR;

 result = ene_load_bincode(us, SD_RW_PATTERN);
 if (result != USB_STOR_XFER_GOOD) {
  usb_stor_dbg(us, "Load SD RW pattern Fail !!\n");
  return USB_STOR_TRANSPORT_ERROR;
 }

 if (info->SD_Status.HiCapacity)
  bnByte = bn;


 memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 bcb->DataTransferLength = blenByte;
 bcb->Flags = 0x00;
 bcb->CDB[0] = 0xF0;
 bcb->CDB[5] = (unsigned char)(bnByte);
 bcb->CDB[4] = (unsigned char)(bnByte>>8);
 bcb->CDB[3] = (unsigned char)(bnByte>>16);
 bcb->CDB[2] = (unsigned char)(bnByte>>24);

 result = ene_send_scsi_cmd(us, FDIR_WRITE, scsi_sglist(srb), 1);
 return result;
}
