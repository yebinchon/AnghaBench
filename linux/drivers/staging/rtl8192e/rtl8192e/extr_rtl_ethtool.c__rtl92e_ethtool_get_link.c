
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ RTLLIB_LINKED ;
 scalar_t__ RTLLIB_LINKED_SCANNING ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static u32 _rtl92e_ethtool_get_link(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 return ((priv->rtllib->state == RTLLIB_LINKED) ||
  (priv->rtllib->state == RTLLIB_LINKED_SCANNING));
}
