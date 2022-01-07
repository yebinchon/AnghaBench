
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {unsigned int ioaddr; } ;


 int __raw_writel (int ,unsigned int) ;

__attribute__((used)) static inline void pxa2xx_spi_write(const struct driver_data *drv_data,
         unsigned reg, u32 val)
{
 __raw_writel(val, drv_data->ioaddr + reg);
}
