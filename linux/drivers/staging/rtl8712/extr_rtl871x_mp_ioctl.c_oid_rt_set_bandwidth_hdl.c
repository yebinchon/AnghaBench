
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct TYPE_2__ {scalar_t__ curr_bandwidth; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 scalar_t__ HT_CHANNEL_WIDTH_40 ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 int r8712_SwitchBandwidth (struct _adapter*) ;

uint oid_rt_set_bandwidth_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 u32 bandwidth;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len < sizeof(u32))
  return RNDIS_STATUS_INVALID_LENGTH;
 bandwidth = *((u32 *)poid_par_priv->information_buf);
 if (bandwidth != HT_CHANNEL_WIDTH_20)
  bandwidth = HT_CHANNEL_WIDTH_40;
 Adapter->mppriv.curr_bandwidth = (u8)bandwidth;
 r8712_SwitchBandwidth(Adapter);
 return RNDIS_STATUS_SUCCESS;
}
