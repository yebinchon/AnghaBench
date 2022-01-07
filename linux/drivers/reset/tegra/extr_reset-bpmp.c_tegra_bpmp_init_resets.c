
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int nr_resets; int of_node; int owner; int * ops; } ;
struct tegra_bpmp {TYPE_3__ rstc; TYPE_2__* dev; TYPE_1__* soc; } ;
struct TYPE_5__ {int of_node; } ;
struct TYPE_4__ {int num_resets; } ;


 int THIS_MODULE ;
 int devm_reset_controller_register (TYPE_2__*,TYPE_3__*) ;
 int tegra_bpmp_reset_ops ;

int tegra_bpmp_init_resets(struct tegra_bpmp *bpmp)
{
 bpmp->rstc.ops = &tegra_bpmp_reset_ops;
 bpmp->rstc.owner = THIS_MODULE;
 bpmp->rstc.of_node = bpmp->dev->of_node;
 bpmp->rstc.nr_resets = bpmp->soc->num_resets;

 return devm_reset_controller_register(bpmp->dev, &bpmp->rstc);
}
