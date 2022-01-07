
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct setauth_parm {int mode; } ;
struct mlme_ext_info {int auth_algo; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int H2C_SUCCESS ;

u8 setauth_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 struct setauth_parm *pparm = (struct setauth_parm *)pbuf;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);

 if (pparm->mode < 4)
  pmlmeinfo->auth_algo = pparm->mode;

 return H2C_SUCCESS;
}
