
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATAREG ;
 scalar_t__ INDEXREG ;
 scalar_t__ NSP_MMIO_OFFSET ;
 int writeb (unsigned char,unsigned char*) ;

__attribute__((used)) static inline void nsp_mmio_index_write(unsigned long base,
     unsigned int reg,
     unsigned char val)
{
 unsigned char *index_ptr = (unsigned char *)(base + NSP_MMIO_OFFSET + INDEXREG);
 unsigned char *data_ptr = (unsigned char *)(base + NSP_MMIO_OFFSET + DATAREG);

 writeb((unsigned char)reg, index_ptr);
 writeb(val, data_ptr);
}
