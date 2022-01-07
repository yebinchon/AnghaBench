
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa25x_udc {int dummy; } ;


 int UDCCS0 ;
 int udc_get_reg (struct pxa25x_udc*,int ) ;

__attribute__((used)) static inline u32 udc_ep0_get_UDCCS(struct pxa25x_udc *dev)
{
 return udc_get_reg(dev, UDCCS0);
}
