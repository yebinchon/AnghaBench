
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP_DSS_WB ;
 int dispc_ovl_enable (int ,int) ;

void dispc_wb_enable(bool enable)
{
 dispc_ovl_enable(OMAP_DSS_WB, enable);
}
