
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NSP32_MMIO_OFFSET ;
 int cpu_to_le32 (unsigned long) ;
 int writel (int ,unsigned long volatile*) ;

__attribute__((used)) static inline void nsp32_mmio_write4(unsigned long base,
         unsigned int index,
         unsigned long val)
{
 volatile unsigned long *ptr;

 ptr = (unsigned long *)(base + NSP32_MMIO_OFFSET + index);

 writel(cpu_to_le32(val), ptr);
}
