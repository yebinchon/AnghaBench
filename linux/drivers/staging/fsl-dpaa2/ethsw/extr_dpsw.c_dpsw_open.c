
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_cmd_open {int dpsw_id; } ;


 int DPSW_CMDID_OPEN ;
 int cpu_to_le32 (int) ;
 int mc_cmd_hdr_read_token (struct fsl_mc_command*) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_open(struct fsl_mc_io *mc_io,
       u32 cmd_flags,
       int dpsw_id,
       u16 *token)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_cmd_open *cmd_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_OPEN,
       cmd_flags,
       0);
 cmd_params = (struct dpsw_cmd_open *)cmd.params;
 cmd_params->dpsw_id = cpu_to_le32(dpsw_id);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 *token = mc_cmd_hdr_read_token(&cmd);

 return 0;
}
