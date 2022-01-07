
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct w1_slave {TYPE_1__ dev; } ;


 int NB_SYSFS_BIN_FILES ;
 int sysfs_create_bin_file (int *,int *) ;
 int sysfs_remove_bin_file (int *,int *) ;
 int * w1_f12_sysfs_bin_files ;

__attribute__((used)) static int w1_f12_add_slave(struct w1_slave *sl)
{
 int err = 0;
 int i;

 for (i = 0; i < NB_SYSFS_BIN_FILES && !err; ++i)
  err = sysfs_create_bin_file(
   &sl->dev.kobj,
   &(w1_f12_sysfs_bin_files[i]));
 if (err)
  while (--i >= 0)
   sysfs_remove_bin_file(&sl->dev.kobj,
    &(w1_f12_sysfs_bin_files[i]));
 return err;
}
