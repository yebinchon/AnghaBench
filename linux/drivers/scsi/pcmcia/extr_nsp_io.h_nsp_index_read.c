
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATAREG ;
 scalar_t__ INDEXREG ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static inline unsigned char nsp_index_read(unsigned int BaseAddr,
        unsigned int Register)
{
 outb(Register, BaseAddr + INDEXREG);
 return inb(BaseAddr + DATAREG);
}
