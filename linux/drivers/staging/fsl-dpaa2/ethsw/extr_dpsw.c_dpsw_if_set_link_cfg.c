
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_link_cfg {int options; int rate; } ;
struct dpsw_cmd_if_set_link_cfg {int options; int rate; int if_id; } ;


 int DPSW_CMDID_IF_SET_LINK_CFG ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_if_set_link_cfg(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 token,
    u16 if_id,
    struct dpsw_link_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_cmd_if_set_link_cfg *cmd_params;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_IF_SET_LINK_CFG,
       cmd_flags,
       token);
 cmd_params = (struct dpsw_cmd_if_set_link_cfg *)cmd.params;
 cmd_params->if_id = cpu_to_le16(if_id);
 cmd_params->rate = cpu_to_le32(cfg->rate);
 cmd_params->options = cpu_to_le64(cfg->options);


 return mc_send_command(mc_io, &cmd);
}
