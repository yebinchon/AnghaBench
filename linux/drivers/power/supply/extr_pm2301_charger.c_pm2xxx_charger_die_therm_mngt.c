
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2xxx_charger {int check_main_thermal_prot_work; int charger_wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static int pm2xxx_charger_die_therm_mngt(struct pm2xxx_charger *pm2, int val)
{
 queue_work(pm2->charger_wq, &pm2->check_main_thermal_prot_work);

 return 0;
}
