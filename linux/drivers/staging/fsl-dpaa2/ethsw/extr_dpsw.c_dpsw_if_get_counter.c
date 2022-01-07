
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_rsp_if_get_counter {int counter; } ;
struct dpsw_cmd_if_get_counter {int type; int if_id; } ;
typedef enum dpsw_counter { ____Placeholder_dpsw_counter } dpsw_counter ;


 int COUNTER_TYPE ;
 int DPSW_CMDID_IF_GET_COUNTER ;
 int cpu_to_le16 (int ) ;
 int dpsw_set_field (int ,int ,int) ;
 int le64_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_if_get_counter(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   u16 if_id,
   enum dpsw_counter type,
   u64 *counter)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_cmd_if_get_counter *cmd_params;
 struct dpsw_rsp_if_get_counter *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_IF_GET_COUNTER,
       cmd_flags,
       token);
 cmd_params = (struct dpsw_cmd_if_get_counter *)cmd.params;
 cmd_params->if_id = cpu_to_le16(if_id);
 dpsw_set_field(cmd_params->type, COUNTER_TYPE, type);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpsw_rsp_if_get_counter *)cmd.params;
 *counter = le64_to_cpu(rsp_params->counter);

 return 0;
}
