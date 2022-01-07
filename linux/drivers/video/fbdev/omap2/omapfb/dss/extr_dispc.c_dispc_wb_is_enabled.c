
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP_DSS_WB ;
 int dispc_ovl_enabled (int ) ;

bool dispc_wb_is_enabled(void)
{
 return dispc_ovl_enabled(OMAP_DSS_WB);
}
