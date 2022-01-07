
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int * device; } ;


 int GASKET_SYSFS_NUM_MAPPINGS ;
 TYPE_1__* dev_mappings ;
 int mutex_init (int *) ;

void gasket_sysfs_init(void)
{
 int i;

 for (i = 0; i < GASKET_SYSFS_NUM_MAPPINGS; i++) {
  dev_mappings[i].device = ((void*)0);
  mutex_init(&dev_mappings[i].mutex);
 }
}
