
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa25x_udc {int dummy; } ;


 int UDCCS0 ;
 int udc_set_reg (struct pxa25x_udc*,int ,int ) ;

__attribute__((used)) static inline void udc_ep0_set_UDCCS(struct pxa25x_udc *dev, u32 data)
{
 udc_set_reg(dev, data, UDCCS0);
}
