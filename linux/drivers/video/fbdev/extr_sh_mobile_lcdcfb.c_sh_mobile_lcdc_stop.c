
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {struct sh_mobile_lcdc_chan* ch; scalar_t__ started; } ;
struct sh_mobile_lcdc_chan {scalar_t__ enabled; TYPE_3__* bl; TYPE_2__* info; scalar_t__ frame_end; int frame_end_wait; } ;
struct TYPE_4__ {int power; } ;
struct TYPE_6__ {TYPE_1__ props; } ;
struct TYPE_5__ {int * fbdefio; int deferred_work; } ;


 int ARRAY_SIZE (struct sh_mobile_lcdc_chan*) ;
 int FB_BLANK_POWERDOWN ;
 int backlight_update_status (TYPE_3__*) ;
 int fb_deferred_io_cleanup (TYPE_2__*) ;
 int schedule_delayed_work (int *,int ) ;
 int sh_mobile_lcdc_clk_off (struct sh_mobile_lcdc_priv*) ;
 int sh_mobile_lcdc_clk_on (struct sh_mobile_lcdc_priv*) ;
 int sh_mobile_lcdc_display_off (struct sh_mobile_lcdc_chan*) ;
 int sh_mobile_lcdc_start_stop (struct sh_mobile_lcdc_priv*,int ) ;
 int wait_event (int ,scalar_t__) ;

__attribute__((used)) static void sh_mobile_lcdc_stop(struct sh_mobile_lcdc_priv *priv)
{
 struct sh_mobile_lcdc_chan *ch;
 int k;


 for (k = 0; k < ARRAY_SIZE(priv->ch); k++) {
  ch = &priv->ch[k];
  if (!ch->enabled)
   continue;





  if (ch->info && ch->info->fbdefio) {
   ch->frame_end = 0;
   schedule_delayed_work(&ch->info->deferred_work, 0);
   wait_event(ch->frame_end_wait, ch->frame_end);
   fb_deferred_io_cleanup(ch->info);
   ch->info->fbdefio = ((void*)0);
   sh_mobile_lcdc_clk_on(priv);
  }

  if (ch->bl) {
   ch->bl->props.power = FB_BLANK_POWERDOWN;
   backlight_update_status(ch->bl);
  }

  sh_mobile_lcdc_display_off(ch);
 }


 if (priv->started) {
  sh_mobile_lcdc_start_stop(priv, 0);
  priv->started = 0;
 }


 for (k = 0; k < ARRAY_SIZE(priv->ch); k++)
  if (priv->ch[k].enabled)
   sh_mobile_lcdc_clk_off(priv);
}
