
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct pch_spi_data {scalar_t__ io_remap_addr; } ;


 int iowrite32 (int ,scalar_t__) ;
 struct pch_spi_data* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static inline void pch_spi_writereg(struct spi_master *master, int idx, u32 val)
{
 struct pch_spi_data *data = spi_master_get_devdata(master);
 iowrite32(val, (data->io_remap_addr + idx));
}
