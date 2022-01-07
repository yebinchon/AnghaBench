
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int* bytes_rw; scalar_t__ information_buf; } ;


 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;

uint oid_rt_supported_wireless_mode_hdl(struct oid_par_priv
            *poid_par_priv)
{
 u32 ulInfo = 0;

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len >= sizeof(u32)) {
  ulInfo |= 0x0100;
  ulInfo |= 0x0200;
  ulInfo |= 0x0400;
  *(u32 *) poid_par_priv->information_buf = ulInfo;
  *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 } else {
  return RNDIS_STATUS_INVALID_LENGTH;
 }
 return RNDIS_STATUS_SUCCESS;
}
