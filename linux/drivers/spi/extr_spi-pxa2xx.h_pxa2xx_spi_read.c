
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {unsigned int ioaddr; } ;


 int __raw_readl (unsigned int) ;

__attribute__((used)) static inline u32 pxa2xx_spi_read(const struct driver_data *drv_data,
      unsigned reg)
{
 return __raw_readl(drv_data->ioaddr + reg);
}
