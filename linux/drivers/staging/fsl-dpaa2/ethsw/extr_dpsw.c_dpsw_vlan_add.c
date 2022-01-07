
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_vlan_cfg {int fdb_id; } ;
struct dpsw_vlan_add {void* vlan_id; void* fdb_id; } ;


 int DPSW_CMDID_VLAN_ADD ;
 void* cpu_to_le16 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_vlan_add(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 token,
    u16 vlan_id,
    const struct dpsw_vlan_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_vlan_add *cmd_params;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_VLAN_ADD,
       cmd_flags,
       token);
 cmd_params = (struct dpsw_vlan_add *)cmd.params;
 cmd_params->fdb_id = cpu_to_le16(cfg->fdb_id);
 cmd_params->vlan_id = cpu_to_le16(vlan_id);


 return mc_send_command(mc_io, &cmd);
}
