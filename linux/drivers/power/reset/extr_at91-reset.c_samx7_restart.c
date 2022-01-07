
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int AT91_RSTC_KEY ;
 int AT91_RSTC_PROCRST ;
 int NOTIFY_DONE ;
 int at91_rstc_base ;
 int cpu_to_le32 (int) ;
 int writel (int ,int ) ;

__attribute__((used)) static int samx7_restart(struct notifier_block *this, unsigned long mode,
    void *cmd)
{
 writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PROCRST),
        at91_rstc_base);

 return NOTIFY_DONE;
}
