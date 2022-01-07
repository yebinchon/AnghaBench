
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa25x_ep {int regoff_udccs; int dev; } ;


 int udc_get_reg (int ,int ) ;

__attribute__((used)) static inline u32 udc_ep_get_UDCCS(struct pxa25x_ep *ep)
{
 return udc_get_reg(ep->dev, ep->regoff_udccs);
}
