
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct sg_table {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;



__attribute__((used)) static inline void spi_unmap_buf(struct spi_controller *ctlr,
     struct device *dev, struct sg_table *sgt,
     enum dma_data_direction dir)
{
}
