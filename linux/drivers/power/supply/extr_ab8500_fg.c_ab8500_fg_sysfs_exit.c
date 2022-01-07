
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int fg_kobject; } ;


 int kobject_del (int *) ;

__attribute__((used)) static void ab8500_fg_sysfs_exit(struct ab8500_fg *di)
{
 kobject_del(&di->fg_kobject);
}
