
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fotg210_udc {scalar_t__ reg; } ;


 scalar_t__ FOTG210_DAR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void fotg210_set_dev_addr(struct fotg210_udc *fotg210, u32 addr)
{
 u32 value = ioread32(fotg210->reg + FOTG210_DAR);

 value |= (addr & 0x7F);
 iowrite32(value, fotg210->reg + FOTG210_DAR);
}
