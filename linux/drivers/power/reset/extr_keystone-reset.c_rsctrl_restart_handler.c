
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int RSCTRL_RESET_MASK ;
 scalar_t__ RSCTRL_RG ;
 int pllctrl_regs ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int rsctrl_enable_rspll_write () ;
 scalar_t__ rspll_offset ;

__attribute__((used)) static int rsctrl_restart_handler(struct notifier_block *this,
      unsigned long mode, void *cmd)
{

 rsctrl_enable_rspll_write();


 regmap_update_bits(pllctrl_regs, rspll_offset + RSCTRL_RG,
      RSCTRL_RESET_MASK, 0);

 return NOTIFY_DONE;
}
