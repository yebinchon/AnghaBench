
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct w1_slave {TYPE_1__ dev; } ;


 int sysfs_create_bin_file (int *,int *) ;
 int w1_f0d_bin_attr ;

__attribute__((used)) static int w1_f0d_add_slave(struct w1_slave *sl)
{
 return sysfs_create_bin_file(&sl->dev.kobj, &w1_f0d_bin_attr);
}
