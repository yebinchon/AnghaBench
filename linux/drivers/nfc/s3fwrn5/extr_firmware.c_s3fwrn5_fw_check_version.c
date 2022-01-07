
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct s3fwrn5_fw_version {scalar_t__ major; scalar_t__ build1; scalar_t__ build2; } ;
struct TYPE_2__ {int version; } ;
struct s3fwrn5_fw_info {TYPE_1__ fw; } ;



bool s3fwrn5_fw_check_version(struct s3fwrn5_fw_info *fw_info, u32 version)
{
 struct s3fwrn5_fw_version *new = (void *) &fw_info->fw.version;
 struct s3fwrn5_fw_version *old = (void *) &version;

 if (new->major > old->major)
  return 1;
 if (new->build1 > old->build1)
  return 1;
 if (new->build2 > old->build2)
  return 1;

 return 0;
}
