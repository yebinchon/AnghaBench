
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int* bytes_rw; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct TYPE_2__ {int rx_crcerrpktcount; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;

uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
     struct oid_par_priv *poid_par_priv)
{
 uint status = RNDIS_STATUS_SUCCESS;
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);

 if (poid_par_priv->type_of_oid != QUERY_OID) {
  status = RNDIS_STATUS_NOT_ACCEPTED;
  return status;
 }
 if (poid_par_priv->information_buf_len == sizeof(u32)) {
  *(u32 *)poid_par_priv->information_buf =
     Adapter->mppriv.rx_crcerrpktcount;
  *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 } else {
  status = RNDIS_STATUS_INVALID_LENGTH;
 }
 return status;
}
