
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (int) ;
 int udelay (int) ;

__attribute__((used)) static void tegra_spi_transfer_delay(int delay)
{
 if (!delay)
  return;

 if (delay >= 1000)
  mdelay(delay / 1000);

 udelay(delay % 1000);
}
