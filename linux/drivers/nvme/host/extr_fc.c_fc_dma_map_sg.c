
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_map_sg (struct device*,struct scatterlist*,int,int) ;
 int fc_map_sg (struct scatterlist*,int) ;

__attribute__((used)) static inline int
fc_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
  enum dma_data_direction dir)
{
 return dev ? dma_map_sg(dev, sg, nents, dir) : fc_map_sg(sg, nents);
}
