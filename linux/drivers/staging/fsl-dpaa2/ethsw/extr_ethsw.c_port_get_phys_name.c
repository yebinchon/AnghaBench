
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethsw_port_priv {int idx; } ;


 int EINVAL ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int port_get_phys_name(struct net_device *netdev, char *name,
         size_t len)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 int err;

 err = snprintf(name, len, "p%d", port_priv->idx);
 if (err >= len)
  return -EINVAL;

 return 0;
}
