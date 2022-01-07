
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {scalar_t__ plt_mode; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* boot ) (struct wl1271*) ;} ;


 int EINVAL ;
 scalar_t__ PLT_FEM_DETECT ;
 int WL18XX_SCR_PAD8 ;
 int WL18XX_SCR_PAD8_PLT ;
 int stub1 (struct wl1271*) ;
 int wl1271_error (char*) ;
 int wlcore_write32 (struct wl1271*,int ,int ) ;

__attribute__((used)) static int wl18xx_plt_init(struct wl1271 *wl)
{
 int ret;


 if (wl->plt_mode == PLT_FEM_DETECT) {
  wl1271_error("wl18xx_plt_init: PLT FEM_DETECT not supported");
  return -EINVAL;
 }

 ret = wlcore_write32(wl, WL18XX_SCR_PAD8, WL18XX_SCR_PAD8_PLT);
 if (ret < 0)
  return ret;

 return wl->ops->boot(wl);
}
