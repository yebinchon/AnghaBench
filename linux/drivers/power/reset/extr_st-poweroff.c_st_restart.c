
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int mask_rst_msk; int offset_rst_msk; int regmap; int mask_rst; int offset_rst; } ;


 int NOTIFY_DONE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 TYPE_1__* st_restart_syscfg ;

__attribute__((used)) static int st_restart(struct notifier_block *this, unsigned long mode,
        void *cmd)
{

 regmap_update_bits(st_restart_syscfg->regmap,
      st_restart_syscfg->offset_rst,
      st_restart_syscfg->mask_rst,
      0);


 regmap_update_bits(st_restart_syscfg->regmap,
      st_restart_syscfg->offset_rst_msk,
      st_restart_syscfg->mask_rst_msk,
      0);

 return NOTIFY_DONE;
}
