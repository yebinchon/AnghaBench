
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int dispc_mgr_enable (int,int) ;

__attribute__((used)) static void dispc_mgr_enable_lcd_out(enum omap_channel channel)
{
 dispc_mgr_enable(channel, 1);
}
