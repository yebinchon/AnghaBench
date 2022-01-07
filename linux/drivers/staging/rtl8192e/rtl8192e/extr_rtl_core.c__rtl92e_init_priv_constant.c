
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt_pwr_save_ctrl {int RegMaxLPSAwakeIntvl; } ;
struct r8192_priv {TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int PowerSaveControl; } ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_init_priv_constant(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rt_pwr_save_ctrl *pPSC = (struct rt_pwr_save_ctrl *)
     &priv->rtllib->PowerSaveControl;

 pPSC->RegMaxLPSAwakeIntvl = 5;
}
