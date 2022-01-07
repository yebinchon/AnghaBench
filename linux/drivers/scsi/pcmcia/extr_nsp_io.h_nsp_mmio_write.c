
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NSP_MMIO_OFFSET ;
 int writeb (unsigned char,unsigned char*) ;

__attribute__((used)) static inline void nsp_mmio_write(unsigned long base,
      unsigned int index,
      unsigned char val)
{
 unsigned char *ptr = (unsigned char *)(base + NSP_MMIO_OFFSET + index);

 writeb(val, ptr);
}
