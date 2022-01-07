
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;


 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 int r8712_SetSingleToneTx (struct _adapter*,int ) ;

uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
           *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 u32 bStartTest;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 bStartTest = *((u32 *)poid_par_priv->information_buf);
 r8712_SetSingleToneTx(Adapter, (u8)bStartTest);
 return RNDIS_STATUS_SUCCESS;
}
