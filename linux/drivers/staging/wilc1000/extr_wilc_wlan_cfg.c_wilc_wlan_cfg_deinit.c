
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int str_vals; int s; int w; int hw; int b; } ;
struct wilc {TYPE_1__ cfg; } ;


 int kfree (int ) ;

void wilc_wlan_cfg_deinit(struct wilc *wl)
{
 kfree(wl->cfg.b);
 kfree(wl->cfg.hw);
 kfree(wl->cfg.w);
 kfree(wl->cfg.s);
 kfree(wl->cfg.str_vals);
}
