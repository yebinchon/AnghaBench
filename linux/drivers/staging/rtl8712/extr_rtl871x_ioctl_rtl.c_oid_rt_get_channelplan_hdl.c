
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ information_buf; int information_buf_len; int * bytes_rw; struct _adapter* adapter_context; } ;
struct eeprom_priv {int channel_plan; } ;
struct _adapter {struct eeprom_priv eeprompriv; } ;


 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;

uint oid_rt_get_channelplan_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *padapter = poid_par_priv->adapter_context;
 struct eeprom_priv *peeprompriv = &padapter->eeprompriv;

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 *(u16 *)poid_par_priv->information_buf = peeprompriv->channel_plan;
 return RNDIS_STATUS_SUCCESS;
}
