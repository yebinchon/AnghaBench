
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {scalar_t__ base; } ;


 scalar_t__ USB2_COMMCTRL ;
 int USB2_COMMCTRL_OTG_PERI ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool rcar_gen3_is_host(struct rcar_gen3_chan *ch)
{
 return !(readl(ch->base + USB2_COMMCTRL) & USB2_COMMCTRL_OTG_PERI);
}
