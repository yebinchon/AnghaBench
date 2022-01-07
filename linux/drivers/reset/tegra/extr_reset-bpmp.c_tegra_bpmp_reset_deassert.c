
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int CMD_RESET_DEASSERT ;
 int tegra_bpmp_reset_common (struct reset_controller_dev*,int ,unsigned long) ;

__attribute__((used)) static int tegra_bpmp_reset_deassert(struct reset_controller_dev *rstc,
         unsigned long id)
{
 return tegra_bpmp_reset_common(rstc, CMD_RESET_DEASSERT, id);
}
