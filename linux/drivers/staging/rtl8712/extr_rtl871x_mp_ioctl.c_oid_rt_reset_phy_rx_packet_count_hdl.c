
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;


 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 int r8712_ResetPhyRxPktCount (struct _adapter*) ;

uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
       *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 r8712_ResetPhyRxPktCount(Adapter);
 return RNDIS_STATUS_SUCCESS;
}
