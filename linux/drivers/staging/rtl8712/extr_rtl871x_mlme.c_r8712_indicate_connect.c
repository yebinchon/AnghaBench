
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlme_priv {int to_join; int dhcp_timer; } ;
struct TYPE_4__ {scalar_t__ power_mgnt; } ;
struct TYPE_3__ {int (* LedControlHandler ) (struct _adapter*,int ) ;} ;
struct _adapter {TYPE_2__ registrypriv; TYPE_1__ ledpriv; struct mlme_priv mlmepriv; } ;


 int LED_CTL_LINK ;
 scalar_t__ PS_MODE_ACTIVE ;
 int _FW_LINKED ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int r8712_os_indicate_connect (struct _adapter*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int stub1 (struct _adapter*,int ) ;

void r8712_indicate_connect(struct _adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 pmlmepriv->to_join = 0;
 set_fwstate(pmlmepriv, _FW_LINKED);
 padapter->ledpriv.LedControlHandler(padapter, LED_CTL_LINK);
 r8712_os_indicate_connect(padapter);
 if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE)
  mod_timer(&pmlmepriv->dhcp_timer,
     jiffies + msecs_to_jiffies(60000));
}
