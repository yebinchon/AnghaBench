
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 void dma_free_attrs (int ,size_t,void*,int ,unsigned long) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static void vmd_free(struct device *dev, size_t size, void *vaddr,
       dma_addr_t addr, unsigned long attrs)
{
 return dma_free_attrs(to_vmd_dev(dev), size, vaddr, addr, attrs);
}
