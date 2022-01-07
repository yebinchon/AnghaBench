
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_sync_sg_for_cpu (int ,struct scatterlist*,int,int) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static void vmd_sync_sg_for_cpu(struct device *dev, struct scatterlist *sg,
    int nents, enum dma_data_direction dir)
{
 dma_sync_sg_for_cpu(to_vmd_dev(dev), sg, nents, dir);
}
