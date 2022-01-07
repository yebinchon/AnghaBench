
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int OMAP_DSS_CHANNEL_DIGIT ;
 int WARN_ON (int) ;
 int dispc_mgr_enable_digit_out () ;
 int dispc_mgr_enable_lcd_out (int) ;
 scalar_t__ dss_mgr_is_lcd (int) ;

void dispc_mgr_enable_sync(enum omap_channel channel)
{
 if (dss_mgr_is_lcd(channel))
  dispc_mgr_enable_lcd_out(channel);
 else if (channel == OMAP_DSS_CHANNEL_DIGIT)
  dispc_mgr_enable_digit_out();
 else
  WARN_ON(1);
}
