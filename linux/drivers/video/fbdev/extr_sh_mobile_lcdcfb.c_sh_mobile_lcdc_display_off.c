
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_mobile_lcdc_panel_cfg {int (* display_off ) () ;} ;
struct sh_mobile_lcdc_chan {TYPE_3__* tx_dev; TYPE_1__* cfg; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* display_off ) (TYPE_3__*) ;} ;
struct TYPE_4__ {struct sh_mobile_lcdc_panel_cfg panel_cfg; } ;


 int stub1 () ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static void sh_mobile_lcdc_display_off(struct sh_mobile_lcdc_chan *ch)
{
 const struct sh_mobile_lcdc_panel_cfg *panel = &ch->cfg->panel_cfg;

 if (panel->display_off)
  panel->display_off();

 if (ch->tx_dev)
  ch->tx_dev->ops->display_off(ch->tx_dev);
}
