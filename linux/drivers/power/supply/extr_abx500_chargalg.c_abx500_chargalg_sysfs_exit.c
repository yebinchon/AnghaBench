
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abx500_chargalg {int chargalg_kobject; } ;


 int kobject_del (int *) ;

__attribute__((used)) static void abx500_chargalg_sysfs_exit(struct abx500_chargalg *di)
{
 kobject_del(&di->chargalg_kobject);
}
