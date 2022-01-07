
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int dma_get_sgtable_attrs (int ,struct sg_table*,void*,int ,size_t,unsigned long) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static int vmd_get_sgtable(struct device *dev, struct sg_table *sgt,
      void *cpu_addr, dma_addr_t addr, size_t size,
      unsigned long attrs)
{
 return dma_get_sgtable_attrs(to_vmd_dev(dev), sgt, cpu_addr, addr, size,
   attrs);
}
