
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ab8500_fg {TYPE_1__* fg_psy; int parent; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int * ab8505_fg_sysfs_psy_attrs ;
 int device_remove_file (int *,int *) ;
 scalar_t__ is_ab8505 (int ) ;

__attribute__((used)) static void ab8500_fg_sysfs_psy_remove_attrs(struct ab8500_fg *di)
{
 unsigned int i;

 if (is_ab8505(di->parent)) {
  for (i = 0; i < ARRAY_SIZE(ab8505_fg_sysfs_psy_attrs); i++)
   (void)device_remove_file(&di->fg_psy->dev,
       &ab8505_fg_sysfs_psy_attrs[i]);
 }
}
