
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int * hwmon_cputemp ;
 int nr_packages ;
 int sysfs_create_files (struct kobject*,int ) ;

__attribute__((used)) static int create_sysfs_cputemp_files(struct kobject *kobj)
{
 int i, ret = 0;

 for (i=0; i<nr_packages; i++)
  ret = sysfs_create_files(kobj, hwmon_cputemp[i]);

 return ret;
}
