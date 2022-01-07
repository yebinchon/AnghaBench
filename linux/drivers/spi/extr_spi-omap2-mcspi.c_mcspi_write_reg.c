
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct omap2_mcspi {scalar_t__ base; } ;


 struct omap2_mcspi* spi_master_get_devdata (struct spi_master*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void mcspi_write_reg(struct spi_master *master,
  int idx, u32 val)
{
 struct omap2_mcspi *mcspi = spi_master_get_devdata(master);

 writel_relaxed(val, mcspi->base + idx);
}
