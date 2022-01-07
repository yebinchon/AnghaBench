
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int* bytes_rw; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;


 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 int r8712_efuse_get_current_size (struct _adapter*) ;
 int r8712_efuse_reg_init (struct _adapter*) ;
 int r8712_efuse_reg_uninit (struct _adapter*) ;

uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv
           *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len < sizeof(int))
  return RNDIS_STATUS_INVALID_LENGTH;
 r8712_efuse_reg_init(Adapter);
 *(int *)poid_par_priv->information_buf =
     r8712_efuse_get_current_size(Adapter);
 r8712_efuse_reg_uninit(Adapter);
 *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 return RNDIS_STATUS_SUCCESS;
}
