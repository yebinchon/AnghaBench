
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethsw_port_priv {int netdev; TYPE_1__* ethsw_data; int idx; } ;
struct dpsw_fdb_unicast_cfg {int mac_addr; int type; int if_egress; int member_0; } ;
struct TYPE_2__ {int dpsw_handle; int mc_io; } ;


 int DPSW_FDB_ENTRY_STATIC ;
 int dpsw_fdb_add_unicast (int ,int ,int ,int ,struct dpsw_fdb_unicast_cfg*) ;
 int ether_addr_copy (int ,unsigned char const*) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int ethsw_port_fdb_add_uc(struct ethsw_port_priv *port_priv,
     const unsigned char *addr)
{
 struct dpsw_fdb_unicast_cfg entry = {0};
 int err;

 entry.if_egress = port_priv->idx;
 entry.type = DPSW_FDB_ENTRY_STATIC;
 ether_addr_copy(entry.mac_addr, addr);

 err = dpsw_fdb_add_unicast(port_priv->ethsw_data->mc_io, 0,
       port_priv->ethsw_data->dpsw_handle,
       0, &entry);
 if (err)
  netdev_err(port_priv->netdev,
      "dpsw_fdb_add_unicast err %d\n", err);
 return err;
}
