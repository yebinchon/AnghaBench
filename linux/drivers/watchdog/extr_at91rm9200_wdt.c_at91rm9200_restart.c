
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int AT91_ST_CR ;
 int AT91_ST_EXTEN ;
 int AT91_ST_RSTEN ;
 int AT91_ST_WDMR ;
 int AT91_ST_WDRST ;
 int NOTIFY_DONE ;
 int mdelay (int) ;
 int pr_emerg (char*) ;
 int regmap_st ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int at91rm9200_restart(struct notifier_block *this,
     unsigned long mode, void *cmd)
{



 regmap_write(regmap_st, AT91_ST_WDMR,
       AT91_ST_RSTEN | AT91_ST_EXTEN | 1);
 regmap_write(regmap_st, AT91_ST_CR, AT91_ST_WDRST);

 mdelay(2000);

 pr_emerg("Unable to restart system\n");
 return NOTIFY_DONE;
}
