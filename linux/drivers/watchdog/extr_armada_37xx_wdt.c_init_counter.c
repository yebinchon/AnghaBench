
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada_37xx_watchdog {scalar_t__ reg; } ;


 scalar_t__ CNTR_CTRL (int) ;
 int CNTR_CTRL_MODE_MASK ;
 int CNTR_CTRL_PRESCALE_MASK ;
 int CNTR_CTRL_PRESCALE_MIN ;
 int CNTR_CTRL_PRESCALE_SHIFT ;
 int CNTR_CTRL_TRIG_SRC_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void init_counter(struct armada_37xx_watchdog *dev, int id, u32 mode,
    u32 trig_src)
{
 u32 reg;

 reg = readl(dev->reg + CNTR_CTRL(id));

 reg &= ~(CNTR_CTRL_MODE_MASK | CNTR_CTRL_PRESCALE_MASK |
   CNTR_CTRL_TRIG_SRC_MASK);


 reg |= mode & CNTR_CTRL_MODE_MASK;


 reg |= CNTR_CTRL_PRESCALE_MIN << CNTR_CTRL_PRESCALE_SHIFT;


 reg |= trig_src & CNTR_CTRL_TRIG_SRC_MASK;

 writel(reg, dev->reg + CNTR_CTRL(id));
}
