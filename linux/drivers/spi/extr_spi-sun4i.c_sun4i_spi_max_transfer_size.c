
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 size_t SUN4I_FIFO_DEPTH ;

__attribute__((used)) static size_t sun4i_spi_max_transfer_size(struct spi_device *spi)
{
 return SUN4I_FIFO_DEPTH - 1;
}
