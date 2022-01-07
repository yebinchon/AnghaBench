
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int * bytes_rw; scalar_t__ information_buf; struct _adapter* adapter_context; } ;
struct mlme_priv {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int ADHOCMODE ;
 int ASSOCIATED ;
 int CHECKINGSTATUS ;
 int NOTASSOCIATED ;
 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 int WIFI_ADHOC_STATE ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;

uint oid_rt_get_connect_state_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *padapter = poid_par_priv->adapter_context;
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 u32 ulInfo;

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;





 if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING))
  ulInfo = CHECKINGSTATUS;
 else if (check_fwstate(pmlmepriv, _FW_LINKED))
  ulInfo = ASSOCIATED;
 else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE))
  ulInfo = ADHOCMODE;
 else
  ulInfo = NOTASSOCIATED;
 *(u32 *)poid_par_priv->information_buf = ulInfo;
 *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 return RNDIS_STATUS_SUCCESS;
}
