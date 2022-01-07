
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {char* serial_number; } ;
struct bmic_sense_subsystem_info {int ctrl_serial_number; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct bmic_sense_subsystem_info*) ;
 struct bmic_sense_subsystem_info* kzalloc (int,int ) ;
 int memcpy (char*,int ,int) ;
 int pqi_sense_subsystem_info (struct pqi_ctrl_info*,struct bmic_sense_subsystem_info*) ;

__attribute__((used)) static int pqi_get_ctrl_serial_number(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 struct bmic_sense_subsystem_info *sense_info;

 sense_info = kzalloc(sizeof(*sense_info), GFP_KERNEL);
 if (!sense_info)
  return -ENOMEM;

 rc = pqi_sense_subsystem_info(ctrl_info, sense_info);
 if (rc)
  goto out;

 memcpy(ctrl_info->serial_number, sense_info->ctrl_serial_number,
  sizeof(sense_info->ctrl_serial_number));
 ctrl_info->serial_number[sizeof(sense_info->ctrl_serial_number)] = '\0';

out:
 kfree(sense_info);

 return rc;
}
