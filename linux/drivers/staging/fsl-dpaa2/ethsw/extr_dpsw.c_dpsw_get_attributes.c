
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_rsp_get_attr {int component_type; int options; int max_meters_per_if; int max_fdb_mc_groups; int mem_size; int dpsw_id; int fdb_aging_time; int max_fdb_entries; int num_vlans; int max_vlans; int num_fdbs; int max_fdbs; int num_ifs; } ;
struct dpsw_attr {int component_type; int options; int max_meters_per_if; void* max_fdb_mc_groups; void* mem_size; int id; void* fdb_aging_time; void* max_fdb_entries; void* num_vlans; void* max_vlans; int num_fdbs; int max_fdbs; void* num_ifs; } ;


 int COMPONENT_TYPE ;
 int DPSW_CMDID_GET_ATTR ;
 int dpsw_get_field (int ,int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_get_attributes(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   struct dpsw_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_rsp_get_attr *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_GET_ATTR,
       cmd_flags,
       token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpsw_rsp_get_attr *)cmd.params;
 attr->num_ifs = le16_to_cpu(rsp_params->num_ifs);
 attr->max_fdbs = rsp_params->max_fdbs;
 attr->num_fdbs = rsp_params->num_fdbs;
 attr->max_vlans = le16_to_cpu(rsp_params->max_vlans);
 attr->num_vlans = le16_to_cpu(rsp_params->num_vlans);
 attr->max_fdb_entries = le16_to_cpu(rsp_params->max_fdb_entries);
 attr->fdb_aging_time = le16_to_cpu(rsp_params->fdb_aging_time);
 attr->id = le32_to_cpu(rsp_params->dpsw_id);
 attr->mem_size = le16_to_cpu(rsp_params->mem_size);
 attr->max_fdb_mc_groups = le16_to_cpu(rsp_params->max_fdb_mc_groups);
 attr->max_meters_per_if = rsp_params->max_meters_per_if;
 attr->options = le64_to_cpu(rsp_params->options);
 attr->component_type = dpsw_get_field(rsp_params->component_type,
           COMPONENT_TYPE);

 return 0;
}
