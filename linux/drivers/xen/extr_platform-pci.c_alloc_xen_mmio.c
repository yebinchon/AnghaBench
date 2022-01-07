
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long platform_mmio ;
 unsigned long platform_mmio_alloc ;
 unsigned long platform_mmiolen ;

__attribute__((used)) static unsigned long alloc_xen_mmio(unsigned long len)
{
 unsigned long addr;

 addr = platform_mmio + platform_mmio_alloc;
 platform_mmio_alloc += len;
 BUG_ON(platform_mmio_alloc > platform_mmiolen);

 return addr;
}
