
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NSP32_MMIO_OFFSET ;
 unsigned long le32_to_cpu (int ) ;
 int readl (unsigned long volatile*) ;

__attribute__((used)) static inline unsigned long nsp32_mmio_read4(unsigned long base,
          unsigned int index)
{
 volatile unsigned long *ptr;

 ptr = (unsigned long *)(base + NSP32_MMIO_OFFSET + index);

 return le32_to_cpu(readl(ptr));
}
