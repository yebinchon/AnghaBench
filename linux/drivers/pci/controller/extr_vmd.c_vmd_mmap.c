
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int dma_mmap_attrs (int ,struct vm_area_struct*,void*,int ,size_t,unsigned long) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static int vmd_mmap(struct device *dev, struct vm_area_struct *vma,
      void *cpu_addr, dma_addr_t addr, size_t size,
      unsigned long attrs)
{
 return dma_mmap_attrs(to_vmd_dev(dev), vma, cpu_addr, addr, size,
   attrs);
}
