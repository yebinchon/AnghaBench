
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct us_data {scalar_t__ iobuf; } ;
struct bulk_cb_wrap {int DataTransferLength; int* CDB; int Flags; int Signature; } ;


 int FDIR_READ ;
 int US_BULK_CB_SIGN ;
 int US_BULK_FLAG_IN ;
 int cpu_to_le32 (int ) ;
 int ene_send_scsi_cmd (struct us_data*,int ,void*,int ) ;
 int memset (struct bulk_cb_wrap*,int ,int) ;

__attribute__((used)) static int ene_get_card_type(struct us_data *us, u16 index, void *buf)
{
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
 int result;

 memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 bcb->DataTransferLength = 0x01;
 bcb->Flags = US_BULK_FLAG_IN;
 bcb->CDB[0] = 0xED;
 bcb->CDB[2] = (unsigned char)(index>>8);
 bcb->CDB[3] = (unsigned char)index;

 result = ene_send_scsi_cmd(us, FDIR_READ, buf, 0);
 return result;
}
