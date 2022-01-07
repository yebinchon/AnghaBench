
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethsw_port_priv {int netdev; TYPE_1__* ethsw_data; int idx; } ;
struct dpsw_fdb_multicast_cfg {int num_ifs; int * if_id; int type; int mac_addr; int member_0; } ;
struct TYPE_2__ {int dpsw_handle; int mc_io; } ;


 int DPSW_FDB_ENTRY_STATIC ;
 int ENAVAIL ;
 int dpsw_fdb_remove_multicast (int ,int ,int ,int ,struct dpsw_fdb_multicast_cfg*) ;
 int ether_addr_copy (int ,unsigned char const*) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int ethsw_port_fdb_del_mc(struct ethsw_port_priv *port_priv,
     const unsigned char *addr)
{
 struct dpsw_fdb_multicast_cfg entry = {0};
 int err;

 ether_addr_copy(entry.mac_addr, addr);
 entry.type = DPSW_FDB_ENTRY_STATIC;
 entry.num_ifs = 1;
 entry.if_id[0] = port_priv->idx;

 err = dpsw_fdb_remove_multicast(port_priv->ethsw_data->mc_io, 0,
     port_priv->ethsw_data->dpsw_handle,
     0, &entry);

 if (err && err != -ENAVAIL)
  netdev_err(port_priv->netdev,
      "dpsw_fdb_remove_multicast err %d\n", err);
 return err;
}
