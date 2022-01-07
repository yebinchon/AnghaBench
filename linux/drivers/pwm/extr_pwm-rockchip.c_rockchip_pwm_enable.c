
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_pwm_chip {int clk; TYPE_2__* data; scalar_t__ base; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_3__ {scalar_t__ ctrl; } ;
struct TYPE_4__ {TYPE_1__ regs; int enable_conf; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int readl_relaxed (scalar_t__) ;
 struct rockchip_pwm_chip* to_rockchip_pwm_chip (struct pwm_chip*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int rockchip_pwm_enable(struct pwm_chip *chip,
          struct pwm_device *pwm,
          bool enable)
{
 struct rockchip_pwm_chip *pc = to_rockchip_pwm_chip(chip);
 u32 enable_conf = pc->data->enable_conf;
 int ret;
 u32 val;

 if (enable) {
  ret = clk_enable(pc->clk);
  if (ret)
   return ret;
 }

 val = readl_relaxed(pc->base + pc->data->regs.ctrl);

 if (enable)
  val |= enable_conf;
 else
  val &= ~enable_conf;

 writel_relaxed(val, pc->base + pc->data->regs.ctrl);

 if (!enable)
  clk_disable(pc->clk);

 return 0;
}
