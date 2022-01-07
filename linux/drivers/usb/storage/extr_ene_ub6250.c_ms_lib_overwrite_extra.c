
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u32 ;
struct us_data {scalar_t__ iobuf; } ;
struct bulk_cb_wrap {int DataTransferLength; int* CDB; int Flags; int Signature; } ;


 int FDIR_READ ;
 int MS_RW_PATTERN ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int US_BULK_CB_SIGN ;
 int US_BULK_FLAG_IN ;
 int cpu_to_le32 (int ) ;
 int ene_load_bincode (struct us_data*,int ) ;
 int ene_send_scsi_cmd (struct us_data*,int ,int *,int ) ;
 int memset (struct bulk_cb_wrap*,int ,int) ;

__attribute__((used)) static int ms_lib_overwrite_extra(struct us_data *us, u32 PhyBlockAddr,
    u8 PageNum, u8 OverwriteFlag)
{
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
 int result;

 result = ene_load_bincode(us, MS_RW_PATTERN);
 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 bcb->DataTransferLength = 0x4;
 bcb->Flags = US_BULK_FLAG_IN;
 bcb->CDB[0] = 0xF2;
 bcb->CDB[1] = 0x05;
 bcb->CDB[5] = (unsigned char)(PageNum);
 bcb->CDB[4] = (unsigned char)(PhyBlockAddr);
 bcb->CDB[3] = (unsigned char)(PhyBlockAddr>>8);
 bcb->CDB[2] = (unsigned char)(PhyBlockAddr>>16);
 bcb->CDB[6] = OverwriteFlag;
 bcb->CDB[7] = 0xFF;
 bcb->CDB[8] = 0xFF;
 bcb->CDB[9] = 0xFF;

 result = ene_send_scsi_cmd(us, FDIR_READ, ((void*)0), 0);
 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 return USB_STOR_TRANSPORT_GOOD;
}
