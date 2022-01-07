
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa25x_ep {int regoff_udccs; int dev; } ;


 int udc_set_reg (int ,int ,int ) ;

__attribute__((used)) static inline void udc_ep_set_UDCCS(struct pxa25x_ep *ep, u32 data)
{
 udc_set_reg(ep->dev, data, ep->regoff_udccs);
}
