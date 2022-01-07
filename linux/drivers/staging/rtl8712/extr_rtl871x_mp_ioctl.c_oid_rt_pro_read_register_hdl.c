
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int * bytes_rw; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct mp_rw_reg {int offset; int width; int value; } ;
struct _adapter {int dummy; } ;


 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 int r8712_bb_reg_read (struct _adapter*,int) ;
 int r8712_read16 (struct _adapter*,int) ;
 int r8712_read32 (struct _adapter*,int) ;
 int r8712_read8 (struct _adapter*,int) ;

uint oid_rt_pro_read_register_hdl(struct oid_par_priv
      *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 uint status = RNDIS_STATUS_SUCCESS;
 struct mp_rw_reg *RegRWStruct;
 u16 offset;

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 RegRWStruct = (struct mp_rw_reg *)poid_par_priv->information_buf;
 if ((RegRWStruct->offset >= 0x10250800) &&
     (RegRWStruct->offset <= 0x10250FFF)) {


  offset = (u16)(RegRWStruct->offset) & 0xFFF;
  RegRWStruct->value = r8712_bb_reg_read(Adapter, offset);
 } else {
  switch (RegRWStruct->width) {
  case 1:
   RegRWStruct->value = r8712_read8(Adapter,
         RegRWStruct->offset);
   break;
  case 2:
   RegRWStruct->value = r8712_read16(Adapter,
          RegRWStruct->offset);
   break;
  case 4:
   RegRWStruct->value = r8712_read32(Adapter,
          RegRWStruct->offset);
   break;
  default:
   status = RNDIS_STATUS_NOT_ACCEPTED;
   break;
  }
 }
 *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 return status;
}
