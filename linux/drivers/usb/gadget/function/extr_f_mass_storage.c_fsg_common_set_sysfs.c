
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int sysfs; } ;



void fsg_common_set_sysfs(struct fsg_common *common, bool sysfs)
{
 common->sysfs = sysfs;
}
