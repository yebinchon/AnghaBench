
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct armada_37xx_watchdog {scalar_t__ reg; } ;


 scalar_t__ CNTR_COUNT_HIGH (int) ;
 scalar_t__ CNTR_COUNT_LOW (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void set_counter_value(struct armada_37xx_watchdog *dev, int id, u64 val)
{
 writel(val & 0xffffffff, dev->reg + CNTR_COUNT_LOW(id));
 writel(val >> 32, dev->reg + CNTR_COUNT_HIGH(id));
}
