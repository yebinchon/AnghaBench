
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_rsp_fdb_dump {int num_entries; } ;
struct dpsw_cmd_fdb_dump {int iova_size; int iova_addr; int fdb_id; } ;


 int DPSW_CMDID_FDB_DUMP ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int le16_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_fdb_dump(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 token,
    u16 fdb_id,
    u64 iova_addr,
    u32 iova_size,
    u16 *num_entries)
{
 struct dpsw_cmd_fdb_dump *cmd_params;
 struct dpsw_rsp_fdb_dump *rsp_params;
 struct fsl_mc_command cmd = { 0 };
 int err;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_FDB_DUMP,
       cmd_flags,
       token);
 cmd_params = (struct dpsw_cmd_fdb_dump *)cmd.params;
 cmd_params->fdb_id = cpu_to_le16(fdb_id);
 cmd_params->iova_addr = cpu_to_le64(iova_addr);
 cmd_params->iova_size = cpu_to_le32(iova_size);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;

 rsp_params = (struct dpsw_rsp_fdb_dump *)cmd.params;
 *num_entries = le16_to_cpu(rsp_params->num_entries);

 return 0;
}
