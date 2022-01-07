
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ information_buf; struct _adapter* adapter_context; } ;
struct eeprom_priv {int channel_plan; } ;
struct _adapter {struct eeprom_priv eeprompriv; } ;


 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;

uint oid_rt_set_channelplan_hdl(struct oid_par_priv
           *poid_par_priv)
{
 struct _adapter *padapter = poid_par_priv->adapter_context;
 struct eeprom_priv *peeprompriv = &padapter->eeprompriv;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 peeprompriv->channel_plan = *(u16 *)poid_par_priv->information_buf;
 return RNDIS_STATUS_SUCCESS;
}
