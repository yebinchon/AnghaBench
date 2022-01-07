
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {unsigned long tv_pclk_rate; } ;


 int DISPC_DIVISORo (int) ;
 int FLD_GET (int ,int,int ) ;
 TYPE_1__ dispc ;
 unsigned long dispc_mgr_lclk_rate (int) ;
 int dispc_read_reg (int ) ;
 scalar_t__ dss_mgr_is_lcd (int) ;

__attribute__((used)) static unsigned long dispc_mgr_pclk_rate(enum omap_channel channel)
{
 unsigned long r;

 if (dss_mgr_is_lcd(channel)) {
  int pcd;
  u32 l;

  l = dispc_read_reg(DISPC_DIVISORo(channel));

  pcd = FLD_GET(l, 7, 0);

  r = dispc_mgr_lclk_rate(channel);

  return r / pcd;
 } else {
  return dispc.tv_pclk_rate;
 }
}
