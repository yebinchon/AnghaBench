
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int* bytes_rw; scalar_t__ information_buf; struct _adapter* adapter_context; } ;
struct TYPE_2__ {int rx_middlepacket_crcerr; } ;
struct _adapter {TYPE_1__ recvpriv; } ;


 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;

uint oid_rt_get_middle_packet_crc_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *padapter = poid_par_priv->adapter_context;

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len >= sizeof(u32)) {
  *(u32 *)poid_par_priv->information_buf =
    padapter->recvpriv.rx_middlepacket_crcerr;
  *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 } else {
  return RNDIS_STATUS_INVALID_LENGTH;
 }
 return RNDIS_STATUS_SUCCESS;
}
