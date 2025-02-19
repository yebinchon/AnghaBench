
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u16 ;
struct us_data {scalar_t__ iobuf; } ;
struct bulk_cb_wrap {int DataTransferLength; int Flags; int* CDB; int Signature; } ;


 int FDIR_WRITE ;
 int MS_RW_PATTERN ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int US_BULK_CB_SIGN ;
 int cpu_to_le32 (int ) ;
 int ene_load_bincode (struct us_data*,int ) ;
 int ene_send_scsi_cmd (struct us_data*,int ,unsigned char*,int ) ;
 int memset (struct bulk_cb_wrap*,int ,int) ;

__attribute__((used)) static int ms_read_copyblock(struct us_data *us, u16 oldphy, u16 newphy,
   u16 PhyBlockAddr, u8 PageNum, unsigned char *buf, u16 len)
{
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
 int result;

 result = ene_load_bincode(us, MS_RW_PATTERN);
 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 bcb->DataTransferLength = 0x200*len;
 bcb->Flags = 0x00;
 bcb->CDB[0] = 0xF0;
 bcb->CDB[1] = 0x08;
 bcb->CDB[4] = (unsigned char)(oldphy);
 bcb->CDB[3] = (unsigned char)(oldphy>>8);
 bcb->CDB[2] = 0;
 bcb->CDB[7] = (unsigned char)(newphy);
 bcb->CDB[6] = (unsigned char)(newphy>>8);
 bcb->CDB[5] = 0;
 bcb->CDB[9] = (unsigned char)(PhyBlockAddr);
 bcb->CDB[8] = (unsigned char)(PhyBlockAddr>>8);
 bcb->CDB[10] = PageNum;

 result = ene_send_scsi_cmd(us, FDIR_WRITE, buf, 0);
 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 return USB_STOR_TRANSPORT_GOOD;
}
