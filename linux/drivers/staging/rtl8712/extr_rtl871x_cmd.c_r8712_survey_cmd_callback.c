
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int dummy; } ;
struct cmd_obj {scalar_t__ res; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 scalar_t__ H2C_SUCCESS ;
 int _FW_UNDER_SURVEY ;
 int clr_fwstate (struct mlme_priv*,int ) ;
 int r8712_free_cmd_obj (struct cmd_obj*) ;

void r8712_survey_cmd_callback(struct _adapter *padapter, struct cmd_obj *pcmd)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 if (pcmd->res != H2C_SUCCESS)
  clr_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 r8712_free_cmd_obj(pcmd);
}
