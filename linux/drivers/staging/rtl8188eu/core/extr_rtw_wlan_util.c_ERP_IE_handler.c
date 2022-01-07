
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_802_11_var_ie {int Length; int data; } ;
struct mlme_ext_info {int ERP_enable; int ERP_IE; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int memcpy (int *,int ,int) ;

void ERP_IE_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 if (pIE->Length > 1)
  return;

 pmlmeinfo->ERP_enable = 1;
 memcpy(&pmlmeinfo->ERP_IE, pIE->data, pIE->Length);
}
