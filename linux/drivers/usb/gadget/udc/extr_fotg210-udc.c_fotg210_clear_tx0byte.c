
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fotg210_udc {scalar_t__ reg; } ;


 scalar_t__ FOTG210_TX0BYTE ;
 int TX0BYTE_EP1 ;
 int TX0BYTE_EP2 ;
 int TX0BYTE_EP3 ;
 int TX0BYTE_EP4 ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void fotg210_clear_tx0byte(struct fotg210_udc *fotg210)
{
 u32 value = ioread32(fotg210->reg + FOTG210_TX0BYTE);

 value &= ~(TX0BYTE_EP1 | TX0BYTE_EP2 | TX0BYTE_EP3
     | TX0BYTE_EP4);
 iowrite32(value, fotg210->reg + FOTG210_TX0BYTE);
}
