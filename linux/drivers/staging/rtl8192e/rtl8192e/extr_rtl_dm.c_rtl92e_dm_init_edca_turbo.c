
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int bcurrent_turbo_EDCA; int bis_cur_rdlstate; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int bis_any_nonbepkts; } ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_dm_init_edca_turbo(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 priv->bcurrent_turbo_EDCA = 0;
 priv->rtllib->bis_any_nonbepkts = 0;
 priv->bis_cur_rdlstate = 0;
}
