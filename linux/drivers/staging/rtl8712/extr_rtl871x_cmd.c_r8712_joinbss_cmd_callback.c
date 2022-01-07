
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int assoc_timer; } ;
struct cmd_obj {scalar_t__ res; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 scalar_t__ H2C_SUCCESS ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int r8712_free_cmd_obj (struct cmd_obj*) ;

void r8712_joinbss_cmd_callback(struct _adapter *padapter, struct cmd_obj *pcmd)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 if (pcmd->res != H2C_SUCCESS)
  mod_timer(&pmlmepriv->assoc_timer,
     jiffies + msecs_to_jiffies(1));
 r8712_free_cmd_obj(pcmd);
}
