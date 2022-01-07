
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_unmap_sg_attrs (int ,struct scatterlist*,int,int,unsigned long) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static void vmd_unmap_sg(struct device *dev, struct scatterlist *sg, int nents,
    enum dma_data_direction dir, unsigned long attrs)
{
 dma_unmap_sg_attrs(to_vmd_dev(dev), sg, nents, dir, attrs);
}
