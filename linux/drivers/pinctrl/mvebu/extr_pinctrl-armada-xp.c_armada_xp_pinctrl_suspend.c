
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mvebu_pinctrl_soc_info {TYPE_1__* control_data; int nmodes; } ;
typedef int pm_message_t ;
struct TYPE_2__ {scalar_t__ base; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int MVEBU_MPPS_PER_REG ;
 int * mpp_saved_regs ;
 struct mvebu_pinctrl_soc_info* platform_get_drvdata (struct platform_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int armada_xp_pinctrl_suspend(struct platform_device *pdev,
         pm_message_t state)
{
 struct mvebu_pinctrl_soc_info *soc =
  platform_get_drvdata(pdev);
 int i, nregs;

 nregs = DIV_ROUND_UP(soc->nmodes, MVEBU_MPPS_PER_REG);

 for (i = 0; i < nregs; i++)
  mpp_saved_regs[i] = readl(soc->control_data[0].base + i * 4);

 return 0;
}
