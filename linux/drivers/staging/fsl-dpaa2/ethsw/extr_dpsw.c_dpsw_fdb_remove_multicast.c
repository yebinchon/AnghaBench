
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_fdb_multicast_cfg {int * mac_addr; int num_ifs; int if_id; int type; } ;
struct dpsw_cmd_fdb_multicast_op {int * mac_addr; int if_id; int type; void* num_ifs; void* fdb_id; } ;


 int DPSW_CMDID_FDB_REMOVE_MULTICAST ;
 int ENTRY_TYPE ;
 int build_if_id_bitmap (int ,int ,int ) ;
 void* cpu_to_le16 (int ) ;
 int dpsw_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_fdb_remove_multicast(struct fsl_mc_io *mc_io,
         u32 cmd_flags,
         u16 token,
         u16 fdb_id,
         const struct dpsw_fdb_multicast_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_cmd_fdb_multicast_op *cmd_params;
 int i;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_FDB_REMOVE_MULTICAST,
       cmd_flags,
       token);
 cmd_params = (struct dpsw_cmd_fdb_multicast_op *)cmd.params;
 cmd_params->fdb_id = cpu_to_le16(fdb_id);
 cmd_params->num_ifs = cpu_to_le16(cfg->num_ifs);
 dpsw_set_field(cmd_params->type, ENTRY_TYPE, cfg->type);
 build_if_id_bitmap(cmd_params->if_id, cfg->if_id, cfg->num_ifs);
 for (i = 0; i < 6; i++)
  cmd_params->mac_addr[i] = cfg->mac_addr[5 - i];


 return mc_send_command(mc_io, &cmd);
}
