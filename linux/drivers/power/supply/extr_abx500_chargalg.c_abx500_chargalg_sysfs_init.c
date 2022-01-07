
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abx500_chargalg {int dev; int chargalg_kobject; } ;


 int abx500_chargalg_ktype ;
 int dev_err (int ,char*) ;
 int kobject_init_and_add (int *,int *,int *,char*) ;

__attribute__((used)) static int abx500_chargalg_sysfs_init(struct abx500_chargalg *di)
{
 int ret = 0;

 ret = kobject_init_and_add(&di->chargalg_kobject,
  &abx500_chargalg_ktype,
  ((void*)0), "abx500_chargalg");
 if (ret < 0)
  dev_err(di->dev, "failed to create sysfs entry\n");

 return ret;
}
