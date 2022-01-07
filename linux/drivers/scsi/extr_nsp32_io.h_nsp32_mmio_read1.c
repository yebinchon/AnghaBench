
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NSP32_MMIO_OFFSET ;
 unsigned char readb (unsigned char volatile*) ;

__attribute__((used)) static inline unsigned char nsp32_mmio_read1(unsigned long base,
          unsigned int index)
{
 volatile unsigned char *ptr;

 ptr = (unsigned char *)(base + NSP32_MMIO_OFFSET + index);

 return readb(ptr);
}
