
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ethsw_core {int * vlans; int dev; int dpsw_handle; int mc_io; } ;
struct dpsw_vlan_cfg {int fdb_id; } ;


 int ETHSW_VLAN_MEMBER ;
 int dev_err (int ,char*,int) ;
 int dpsw_vlan_add (int ,int ,int ,size_t,struct dpsw_vlan_cfg*) ;

__attribute__((used)) static int ethsw_add_vlan(struct ethsw_core *ethsw, u16 vid)
{
 int err;

 struct dpsw_vlan_cfg vcfg = {
  .fdb_id = 0,
 };

 err = dpsw_vlan_add(ethsw->mc_io, 0,
       ethsw->dpsw_handle, vid, &vcfg);
 if (err) {
  dev_err(ethsw->dev, "dpsw_vlan_add err %d\n", err);
  return err;
 }
 ethsw->vlans[vid] = ETHSW_VLAN_MEMBER;

 return 0;
}
