
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct w1_slave {TYPE_1__ dev; } ;


 int NB_SYSFS_BIN_FILES ;
 int sysfs_remove_bin_file (int *,int *) ;
 int * w1_f12_sysfs_bin_files ;

__attribute__((used)) static void w1_f12_remove_slave(struct w1_slave *sl)
{
 int i;
 for (i = NB_SYSFS_BIN_FILES - 1; i >= 0; --i)
  sysfs_remove_bin_file(&sl->dev.kobj,
   &(w1_f12_sysfs_bin_files[i]));
}
