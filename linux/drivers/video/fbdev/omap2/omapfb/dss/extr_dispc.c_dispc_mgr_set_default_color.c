
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_DEFAULT_COLOR (int) ;
 int dispc_write_reg (int ,int ) ;

__attribute__((used)) static void dispc_mgr_set_default_color(enum omap_channel channel, u32 color)
{
 dispc_write_reg(DISPC_DEFAULT_COLOR(channel), color);
}
