
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int * hwmon_cputemp ;
 int nr_packages ;
 int sysfs_remove_files (struct kobject*,int ) ;

__attribute__((used)) static void remove_sysfs_cputemp_files(struct kobject *kobj)
{
 int i;

 for (i=0; i<nr_packages; i++)
  sysfs_remove_files(kobj, hwmon_cputemp[i]);
}
