
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_ext_info {int network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
typedef int s32 ;


 int _issue_nulldata (struct adapter*,int *,int ,int) ;
 int * get_my_bssid (int *) ;

s32 issue_nulldata_in_interrupt(struct adapter *padapter, u8 *da)
{
 struct mlme_ext_priv *pmlmeext;
 struct mlme_ext_info *pmlmeinfo;


 pmlmeext = &padapter->mlmeextpriv;
 pmlmeinfo = &pmlmeext->mlmext_info;


 if (!da)
  da = get_my_bssid(&(pmlmeinfo->network));

 return _issue_nulldata(padapter, da, 0, 0);
}
