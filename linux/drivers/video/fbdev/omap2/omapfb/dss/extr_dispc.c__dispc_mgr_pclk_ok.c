
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_4__ {TYPE_1__* feat; } ;
struct TYPE_3__ {unsigned long max_lcd_pclk; unsigned long max_tv_pclk; } ;


 TYPE_2__ dispc ;
 scalar_t__ dss_mgr_is_lcd (int) ;

__attribute__((used)) static bool _dispc_mgr_pclk_ok(enum omap_channel channel,
  unsigned long pclk)
{
 if (dss_mgr_is_lcd(channel))
  return pclk <= dispc.feat->max_lcd_pclk ? 1 : 0;
 else
  return pclk <= dispc.feat->max_tv_pclk ? 1 : 0;
}
