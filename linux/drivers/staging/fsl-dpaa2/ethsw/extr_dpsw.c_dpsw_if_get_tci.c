
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_tci_cfg {int vlan_id; int dei; int pcp; } ;
struct dpsw_rsp_if_get_tci {int vlan_id; int dei; int pcp; } ;
struct dpsw_cmd_if_get_tci {int if_id; } ;


 int DPSW_CMDID_IF_GET_TCI ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_if_get_tci(struct fsl_mc_io *mc_io,
      u32 cmd_flags,
      u16 token,
      u16 if_id,
      struct dpsw_tci_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_cmd_if_get_tci *cmd_params;
 struct dpsw_rsp_if_get_tci *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_IF_GET_TCI,
       cmd_flags,
       token);
 cmd_params = (struct dpsw_cmd_if_get_tci *)cmd.params;
 cmd_params->if_id = cpu_to_le16(if_id);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpsw_rsp_if_get_tci *)cmd.params;
 cfg->pcp = rsp_params->pcp;
 cfg->dei = rsp_params->dei;
 cfg->vlan_id = le16_to_cpu(rsp_params->vlan_id);

 return 0;
}
