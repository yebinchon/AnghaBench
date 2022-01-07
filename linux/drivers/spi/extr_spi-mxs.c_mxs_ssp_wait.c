
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_ssp {scalar_t__ base; } ;
struct mxs_spi {struct mxs_ssp ssp; } ;


 int ETIMEDOUT ;
 int SSP_TIMEOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long const) ;

__attribute__((used)) static int mxs_ssp_wait(struct mxs_spi *spi, int offset, int mask, bool set)
{
 const unsigned long timeout = jiffies + msecs_to_jiffies(SSP_TIMEOUT);
 struct mxs_ssp *ssp = &spi->ssp;
 u32 reg;

 do {
  reg = readl_relaxed(ssp->base + offset);

  if (!set)
   reg = ~reg;

  reg &= mask;

  if (reg == mask)
   return 0;
 } while (time_before(jiffies, timeout));

 return -ETIMEDOUT;
}
