
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_raid_error_info {int dummy; } ;
struct pqi_ctrl_info {int dummy; } ;
struct bmic_csmi_smp_passthru_buffer {int dummy; } ;


 int BMIC_CSMI_PASSTHRU ;
 int pqi_send_ctrl_raid_with_error (struct pqi_ctrl_info*,int ,struct bmic_csmi_smp_passthru_buffer*,size_t,struct pqi_raid_error_info*) ;

int pqi_csmi_smp_passthru(struct pqi_ctrl_info *ctrl_info,
 struct bmic_csmi_smp_passthru_buffer *buffer, size_t buffer_length,
 struct pqi_raid_error_info *error_info)
{
 return pqi_send_ctrl_raid_with_error(ctrl_info, BMIC_CSMI_PASSTHRU,
  buffer, buffer_length, error_info);
}
