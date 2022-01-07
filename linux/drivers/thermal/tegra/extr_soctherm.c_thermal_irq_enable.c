
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tegra_thermctl_zone {TYPE_1__* ts; TYPE_2__* sg; } ;
struct TYPE_4__ {int thermctl_isr_mask; } ;
struct TYPE_3__ {int thermctl_lock; scalar_t__ regs; } ;


 int REG_SET_MASK (int ,int ,int ) ;
 scalar_t__ THERMCTL_INTR_ENABLE ;
 int TH_INTR_UP_DN_EN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void thermal_irq_enable(struct tegra_thermctl_zone *zn)
{
 u32 r;


 mutex_lock(&zn->ts->thermctl_lock);
 r = readl(zn->ts->regs + THERMCTL_INTR_ENABLE);
 r = REG_SET_MASK(r, zn->sg->thermctl_isr_mask, TH_INTR_UP_DN_EN);
 writel(r, zn->ts->regs + THERMCTL_INTR_ENABLE);
 mutex_unlock(&zn->ts->thermctl_lock);
}
