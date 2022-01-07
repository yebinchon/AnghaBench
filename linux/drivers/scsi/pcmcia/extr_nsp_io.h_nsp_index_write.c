
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATAREG ;
 scalar_t__ INDEXREG ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void nsp_index_write(unsigned int BaseAddr,
       unsigned int Register,
       unsigned char Value)
{
 outb(Register, BaseAddr + INDEXREG);
 outb(Value, BaseAddr + DATAREG);
}
