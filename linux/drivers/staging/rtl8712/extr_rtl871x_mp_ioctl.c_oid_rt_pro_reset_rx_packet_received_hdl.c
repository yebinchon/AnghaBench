
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; scalar_t__ adapter_context; } ;
struct TYPE_2__ {scalar_t__ rx_crcerrpktcount; scalar_t__ rx_pktcount; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;

uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
          *poid_par_priv)
{
 uint status = RNDIS_STATUS_SUCCESS;
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len == sizeof(u32)) {
  Adapter->mppriv.rx_pktcount = 0;
  Adapter->mppriv.rx_crcerrpktcount = 0;
 } else {
  status = RNDIS_STATUS_INVALID_LENGTH;
 }
 return status;
}
