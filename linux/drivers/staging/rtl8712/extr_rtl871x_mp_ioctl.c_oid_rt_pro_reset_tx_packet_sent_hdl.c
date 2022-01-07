
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ adapter_context; } ;
struct TYPE_2__ {scalar_t__ tx_pktcount; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;

uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
      *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 Adapter->mppriv.tx_pktcount = 0;
 return RNDIS_STATUS_SUCCESS;
}
