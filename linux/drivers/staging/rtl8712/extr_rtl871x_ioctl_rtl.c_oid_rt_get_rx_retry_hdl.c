
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int * bytes_rw; } ;


 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;

uint oid_rt_get_rx_retry_hdl(struct oid_par_priv *poid_par_priv)
{
 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 return RNDIS_STATUS_SUCCESS;
}
