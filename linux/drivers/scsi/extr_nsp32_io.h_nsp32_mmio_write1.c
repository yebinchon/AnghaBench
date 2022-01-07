
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NSP32_MMIO_OFFSET ;
 int writeb (unsigned char,unsigned char volatile*) ;

__attribute__((used)) static inline void nsp32_mmio_write1(unsigned long base,
         unsigned int index,
         unsigned char val)
{
 volatile unsigned char *ptr;

 ptr = (unsigned char *)(base + NSP32_MMIO_OFFSET + index);

 writeb(val, ptr);
}
