
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipr_ioa_cfg {int dummy; } ;
struct ipr_hostrcb_type_21_error {char* primary_problem_desc; char* second_problem_desc; int length_of_error; int ioa_data; int cdb; int sense_data; int res_path; int * wwn; } ;
struct TYPE_5__ {struct ipr_hostrcb_type_21_error type_21_error; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ error64; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct ipr_hostrcb {TYPE_4__ hcam; } ;
typedef int buffer ;


 int IPR_MAX_RES_PATH_LENGTH ;
 int __ipr_format_res_path (int ,char*,int) ;
 int be32_to_cpu (int ) ;
 int ipr_err (char*,...) ;
 int ipr_log_hex_data (struct ipr_ioa_cfg*,int ,int) ;

__attribute__((used)) static void ipr_log_sis64_device_error(struct ipr_ioa_cfg *ioa_cfg,
      struct ipr_hostrcb *hostrcb)
{
 struct ipr_hostrcb_type_21_error *error;
 char buffer[IPR_MAX_RES_PATH_LENGTH];

 error = &hostrcb->hcam.u.error64.u.type_21_error;

 ipr_err("-----Failing Device Information-----\n");
 ipr_err("World Wide Unique ID: %08X%08X%08X%08X\n",
  be32_to_cpu(error->wwn[0]), be32_to_cpu(error->wwn[1]),
   be32_to_cpu(error->wwn[2]), be32_to_cpu(error->wwn[3]));
 ipr_err("Device Resource Path: %s\n",
  __ipr_format_res_path(error->res_path,
          buffer, sizeof(buffer)));
 error->primary_problem_desc[sizeof(error->primary_problem_desc) - 1] = '\0';
 error->second_problem_desc[sizeof(error->second_problem_desc) - 1] = '\0';
 ipr_err("Primary Problem Description: %s\n", error->primary_problem_desc);
 ipr_err("Secondary Problem Description:  %s\n", error->second_problem_desc);
 ipr_err("SCSI Sense Data:\n");
 ipr_log_hex_data(ioa_cfg, error->sense_data, sizeof(error->sense_data));
 ipr_err("SCSI Command Descriptor Block: \n");
 ipr_log_hex_data(ioa_cfg, error->cdb, sizeof(error->cdb));

 ipr_err("Additional IOA Data:\n");
 ipr_log_hex_data(ioa_cfg, error->ioa_data, be32_to_cpu(error->length_of_error));
}
