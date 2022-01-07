
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {scalar_t__ dr_mode; scalar_t__ base; int uses_otg_pins; } ;


 scalar_t__ USB2_ADPCTRL ;
 int USB2_ADPCTRL_IDDIG ;
 scalar_t__ USB_DR_MODE_HOST ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
{
 if (!ch->uses_otg_pins)
  return (ch->dr_mode == USB_DR_MODE_HOST) ? 0 : 1;

 return !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
}
