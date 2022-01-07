
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int dev; int fg_kobject; } ;


 int ab8500_fg_ktype ;
 int dev_err (int ,char*) ;
 int kobject_init_and_add (int *,int *,int *,char*) ;

__attribute__((used)) static int ab8500_fg_sysfs_init(struct ab8500_fg *di)
{
 int ret = 0;

 ret = kobject_init_and_add(&di->fg_kobject,
  &ab8500_fg_ktype,
  ((void*)0), "battery");
 if (ret < 0)
  dev_err(di->dev, "failed to create sysfs entry\n");

 return ret;
}
