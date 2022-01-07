
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethsw_port_priv {int flood; int netdev; int idx; TYPE_1__* ethsw_data; } ;
struct TYPE_2__ {int dpsw_handle; int mc_io; } ;


 int dpsw_if_set_flooding (int ,int ,int ,int ,int) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int ethsw_port_set_flood(struct ethsw_port_priv *port_priv, bool enable)
{
 int err;

 err = dpsw_if_set_flooding(port_priv->ethsw_data->mc_io, 0,
       port_priv->ethsw_data->dpsw_handle,
       port_priv->idx, enable);
 if (err) {
  netdev_err(port_priv->netdev,
      "dpsw_if_set_flooding err %d\n", err);
  return err;
 }
 port_priv->flood = enable;

 return 0;
}
