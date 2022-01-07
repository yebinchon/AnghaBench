
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct pch_spi_data {scalar_t__ io_remap_addr; } ;


 int ioread32 (scalar_t__) ;
 struct pch_spi_data* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static inline u32 pch_spi_readreg(struct spi_master *master, int idx)
{
 struct pch_spi_data *data = spi_master_get_devdata(master);
 return ioread32(data->io_remap_addr + idx);
}
