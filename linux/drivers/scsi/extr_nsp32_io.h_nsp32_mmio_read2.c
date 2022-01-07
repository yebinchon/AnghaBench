
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NSP32_MMIO_OFFSET ;
 unsigned short le16_to_cpu (int ) ;
 int readw (unsigned short volatile*) ;

__attribute__((used)) static inline unsigned short nsp32_mmio_read2(unsigned long base,
           unsigned int index)
{
 volatile unsigned short *ptr;

 ptr = (unsigned short *)(base + NSP32_MMIO_OFFSET + index);

 return le16_to_cpu(readw(ptr));
}
