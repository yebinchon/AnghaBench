
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_cmd_fdb_set_learning_mode {int mode; int fdb_id; } ;
typedef enum dpsw_fdb_learning_mode { ____Placeholder_dpsw_fdb_learning_mode } dpsw_fdb_learning_mode ;


 int DPSW_CMDID_FDB_SET_LEARNING_MODE ;
 int LEARNING_MODE ;
 int cpu_to_le16 (int ) ;
 int dpsw_set_field (int ,int ,int) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_fdb_set_learning_mode(struct fsl_mc_io *mc_io,
          u32 cmd_flags,
          u16 token,
          u16 fdb_id,
          enum dpsw_fdb_learning_mode mode)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_cmd_fdb_set_learning_mode *cmd_params;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_FDB_SET_LEARNING_MODE,
       cmd_flags,
       token);
 cmd_params = (struct dpsw_cmd_fdb_set_learning_mode *)cmd.params;
 cmd_params->fdb_id = cpu_to_le16(fdb_id);
 dpsw_set_field(cmd_params->mode, LEARNING_MODE, mode);


 return mc_send_command(mc_io, &cmd);
}
