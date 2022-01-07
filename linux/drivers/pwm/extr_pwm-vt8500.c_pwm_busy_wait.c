
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct vt8500_chip {TYPE_1__ chip; scalar_t__ base; } ;


 scalar_t__ REG_STATUS ;
 int cpu_relax () ;
 int dev_warn (int ,char*,int) ;
 int msecs_to_loops (int) ;
 int readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void pwm_busy_wait(struct vt8500_chip *vt8500, int nr, u8 bitmask)
{
 int loops = msecs_to_loops(10);
 u32 mask = bitmask << (nr << 8);

 while ((readl(vt8500->base + REG_STATUS) & mask) && --loops)
  cpu_relax();

 if (unlikely(!loops))
  dev_warn(vt8500->chip.dev, "Waiting for status bits 0x%x to clear timed out\n",
    mask);
}
