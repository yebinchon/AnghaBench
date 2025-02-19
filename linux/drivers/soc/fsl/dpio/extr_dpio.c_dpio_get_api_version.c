
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {int header; int member_0; } ;


 int DPIO_CMDID_GET_API_VERSION ;
 int mc_cmd_read_api_version (struct fsl_mc_command*,int *,int *) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpio_get_api_version(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 *major_ver,
    u16 *minor_ver)
{
 struct fsl_mc_command cmd = { 0 };
 int err;


 cmd.header = mc_encode_cmd_header(DPIO_CMDID_GET_API_VERSION,
       cmd_flags, 0);

 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 mc_cmd_read_api_version(&cmd, major_ver, minor_ver);

 return 0;
}
