
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_spi {int dev; scalar_t__ regs; } ;


 scalar_t__ ROCKCHIP_SPI_SR ;
 int SR_BUSY ;
 int dev_warn (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int readl_relaxed (scalar_t__) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static inline void wait_for_idle(struct rockchip_spi *rs)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(5);

 do {
  if (!(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY))
   return;
 } while (!time_after(jiffies, timeout));

 dev_warn(rs->dev, "spi controller is in busy state!\n");
}
