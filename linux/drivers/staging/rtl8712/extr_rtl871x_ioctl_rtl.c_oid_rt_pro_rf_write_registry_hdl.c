
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; scalar_t__ information_buf; struct _adapter* adapter_context; } ;
struct _adapter {int dummy; } ;


 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 scalar_t__ r8712_setrfreg_cmd (struct _adapter*,unsigned char,unsigned long) ;

uint oid_rt_pro_rf_write_registry_hdl(struct oid_par_priv*
          poid_par_priv)
{
 uint status = RNDIS_STATUS_SUCCESS;
 struct _adapter *Adapter = poid_par_priv->adapter_context;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len ==
    (sizeof(unsigned long) * 3)) {
  if (r8712_setrfreg_cmd(Adapter,
   *(unsigned char *)poid_par_priv->information_buf,
   (unsigned long)(*((unsigned long *)
     poid_par_priv->information_buf + 2))))
   status = RNDIS_STATUS_NOT_ACCEPTED;
 } else {
  status = RNDIS_STATUS_INVALID_LENGTH;
 }
 return status;
}
