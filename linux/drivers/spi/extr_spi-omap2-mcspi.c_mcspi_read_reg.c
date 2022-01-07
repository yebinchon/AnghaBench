
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct omap2_mcspi {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;
 struct omap2_mcspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static inline u32 mcspi_read_reg(struct spi_master *master, int idx)
{
 struct omap2_mcspi *mcspi = spi_master_get_devdata(master);

 return readl_relaxed(mcspi->base + idx);
}
