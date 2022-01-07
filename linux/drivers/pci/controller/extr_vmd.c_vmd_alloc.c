
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* dma_alloc_attrs (int ,size_t,int *,int ,unsigned long) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static void *vmd_alloc(struct device *dev, size_t size, dma_addr_t *addr,
         gfp_t flag, unsigned long attrs)
{
 return dma_alloc_attrs(to_vmd_dev(dev), size, addr, flag, attrs);
}
