
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef scalar_t__ u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct TYPE_2__ {scalar_t__ curr_rateidx; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 scalar_t__ MPT_RATE_LAST ;
 int RNDIS_STATUS_INVALID_DATA ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 int r8712_SetDataRate (struct _adapter*) ;

uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
      *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 u32 ratevalue;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len != sizeof(u32))
  return RNDIS_STATUS_INVALID_LENGTH;
 ratevalue = *((u32 *)poid_par_priv->information_buf);
 if (ratevalue >= MPT_RATE_LAST)
  return RNDIS_STATUS_INVALID_DATA;
 Adapter->mppriv.curr_rateidx = ratevalue;
 r8712_SetDataRate(Adapter);
 return RNDIS_STATUS_SUCCESS;
}
