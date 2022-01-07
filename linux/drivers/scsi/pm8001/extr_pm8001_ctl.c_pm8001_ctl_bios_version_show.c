
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_ioctl_payload {int minor_function; int length; int* func_specific; scalar_t__ offset; } ;
struct pm8001_hba_info {int * nvmd_completion; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ (* get_nvmd_req ) (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;} ;


 int BIOSOFFSET ;
 int BIOS_OFFSET_LIMIT ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* PM8001_CHIP_DISP ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int completion ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ stub1 (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static ssize_t pm8001_ctl_bios_version_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct sas_ha_struct *sha = SHOST_TO_SAS_HA(shost);
 struct pm8001_hba_info *pm8001_ha = sha->lldd_ha;
 char *str = buf;
 int bios_index;
 DECLARE_COMPLETION_ONSTACK(completion);
 struct pm8001_ioctl_payload payload;

 pm8001_ha->nvmd_completion = &completion;
 payload.minor_function = 7;
 payload.offset = 0;
 payload.length = 4096;
 payload.func_specific = kzalloc(4096, GFP_KERNEL);
 if (!payload.func_specific)
  return -ENOMEM;
 if (PM8001_CHIP_DISP->get_nvmd_req(pm8001_ha, &payload)) {
  kfree(payload.func_specific);
  return -ENOMEM;
 }
 wait_for_completion(&completion);
 for (bios_index = BIOSOFFSET; bios_index < BIOS_OFFSET_LIMIT;
  bios_index++)
  str += sprintf(str, "%c",
   *(payload.func_specific+bios_index));
 kfree(payload.func_specific);
 return str - buf;
}
