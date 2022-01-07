
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
typedef void* u16 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct TYPE_2__ {void* antenna_rx; void* antenna_tx; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 int r8712_SwitchAntenna (struct _adapter*) ;

uint oid_rt_pro_set_antenna_bb_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 u32 antenna;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len != sizeof(u32))
  return RNDIS_STATUS_INVALID_LENGTH;
 antenna = *((u32 *)poid_par_priv->information_buf);
 Adapter->mppriv.antenna_tx = (u16)((antenna & 0xFFFF0000) >> 16);
 Adapter->mppriv.antenna_rx = (u16)(antenna & 0x0000FFFF);
 r8712_SwitchAntenna(Adapter);
 return RNDIS_STATUS_SUCCESS;
}
