
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpio_rsp_get_attr {int channel_mode; int qbman_version; int qbman_portal_ci_addr; int qbman_portal_ce_addr; int num_priorities; int qbman_portal_id; int id; } ;
struct dpio_attr {int channel_mode; void* qbman_version; void* qbman_portal_ci_offset; void* qbman_portal_ce_offset; int num_priorities; int qbman_portal_id; void* id; } ;


 int DPIO_CHANNEL_MODE_MASK ;
 int DPIO_CMDID_GET_ATTR ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpio_get_attributes(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   struct dpio_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpio_rsp_get_attr *dpio_rsp;
 int err;


 cmd.header = mc_encode_cmd_header(DPIO_CMDID_GET_ATTR,
       cmd_flags,
       token);

 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 dpio_rsp = (struct dpio_rsp_get_attr *)cmd.params;
 attr->id = le32_to_cpu(dpio_rsp->id);
 attr->qbman_portal_id = le16_to_cpu(dpio_rsp->qbman_portal_id);
 attr->num_priorities = dpio_rsp->num_priorities;
 attr->channel_mode = dpio_rsp->channel_mode & DPIO_CHANNEL_MODE_MASK;
 attr->qbman_portal_ce_offset =
  le64_to_cpu(dpio_rsp->qbman_portal_ce_addr);
 attr->qbman_portal_ci_offset =
  le64_to_cpu(dpio_rsp->qbman_portal_ci_addr);
 attr->qbman_version = le32_to_cpu(dpio_rsp->qbman_version);

 return 0;
}
