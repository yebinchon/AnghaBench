
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_rsp_get_api_version {int version_minor; int version_major; } ;


 int DPSW_CMDID_GET_API_VERSION ;
 int le16_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_get_api_version(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 *major_ver,
    u16 *minor_ver)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_rsp_get_api_version *rsp_params;
 int err;

 cmd.header = mc_encode_cmd_header(DPSW_CMDID_GET_API_VERSION,
       cmd_flags,
       0);

 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;

 rsp_params = (struct dpsw_rsp_get_api_version *)cmd.params;
 *major_ver = le16_to_cpu(rsp_params->version_major);
 *minor_ver = le16_to_cpu(rsp_params->version_minor);

 return 0;
}
