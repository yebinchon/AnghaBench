
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlme_ext_info {int assoc_AP_vendor; int turboMode_cts2self; int turboMode_rtsen; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int DYNAMIC_BB_DYNAMIC_TXPWR ;



 int Switch_DM_Func (struct adapter*,int ,int) ;

void update_IOT_info(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 switch (pmlmeinfo->assoc_AP_vendor) {
 case 130:
  pmlmeinfo->turboMode_cts2self = 1;
  pmlmeinfo->turboMode_rtsen = 0;
  break;
 case 129:
  pmlmeinfo->turboMode_cts2self = 0;
  pmlmeinfo->turboMode_rtsen = 1;

  Switch_DM_Func(padapter, (u32)(~DYNAMIC_BB_DYNAMIC_TXPWR),
          0);
  break;
 case 128:

  Switch_DM_Func(padapter, (u32)(~DYNAMIC_BB_DYNAMIC_TXPWR),
          0);
  break;
 default:
  pmlmeinfo->turboMode_cts2self = 0;
  pmlmeinfo->turboMode_rtsen = 1;
  break;
 }
}
