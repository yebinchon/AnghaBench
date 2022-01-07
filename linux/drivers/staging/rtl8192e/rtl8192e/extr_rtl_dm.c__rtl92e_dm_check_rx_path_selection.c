
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int rfpath_check_wq; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void _rtl92e_dm_check_rx_path_selection(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 schedule_delayed_work(&priv->rfpath_check_wq, 0);
}
