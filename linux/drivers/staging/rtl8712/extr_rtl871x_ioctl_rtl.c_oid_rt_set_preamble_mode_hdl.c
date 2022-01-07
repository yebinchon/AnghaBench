
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int* bytes_rw; scalar_t__ information_buf; struct _adapter* adapter_context; } ;
struct TYPE_2__ {int preamble; } ;
struct _adapter {TYPE_1__ registrypriv; } ;


 int PREAMBLE_AUTO ;
 int PREAMBLE_LONG ;
 int PREAMBLE_SHORT ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;

uint oid_rt_set_preamble_mode_hdl(struct oid_par_priv
      *poid_par_priv)
{
 struct _adapter *padapter = poid_par_priv->adapter_context;
 u32 preamblemode = 0;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len >= sizeof(u32)) {
  preamblemode = *(u32 *)poid_par_priv->information_buf;
  if (preamblemode == 0)
   padapter->registrypriv.preamble = PREAMBLE_LONG;
  else if (preamblemode == 1)
   padapter->registrypriv.preamble = PREAMBLE_AUTO;
  else if (preamblemode == 2)
   padapter->registrypriv.preamble = PREAMBLE_SHORT;
  *(u32 *)poid_par_priv->information_buf = preamblemode;
  *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 } else {
  return RNDIS_STATUS_INVALID_LENGTH;
 }
 return RNDIS_STATUS_SUCCESS;
}
