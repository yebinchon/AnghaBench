
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sh_mobile_lcdc_panel_cfg {int (* display_on ) () ;} ;
struct sh_mobile_lcdc_chan {TYPE_1__* info; TYPE_4__* tx_dev; TYPE_2__* cfg; } ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int (* display_on ) (TYPE_4__*) ;} ;
struct TYPE_6__ {struct sh_mobile_lcdc_panel_cfg panel_cfg; } ;
struct TYPE_5__ {int state; } ;


 int FBINFO_STATE_SUSPENDED ;
 int SH_MOBILE_LCDC_DISPLAY_DISCONNECTED ;
 int stub1 (TYPE_4__*) ;
 int stub2 () ;

__attribute__((used)) static void sh_mobile_lcdc_display_on(struct sh_mobile_lcdc_chan *ch)
{
 const struct sh_mobile_lcdc_panel_cfg *panel = &ch->cfg->panel_cfg;

 if (ch->tx_dev) {
  int ret;

  ret = ch->tx_dev->ops->display_on(ch->tx_dev);
  if (ret < 0)
   return;

  if (ret == SH_MOBILE_LCDC_DISPLAY_DISCONNECTED)
   ch->info->state = FBINFO_STATE_SUSPENDED;
 }


 if (panel->display_on)
  panel->display_on();
}
