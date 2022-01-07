
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_DIVISORo (int) ;
 int FLD_GET (int ,int,int) ;
 int dispc_read_reg (int ) ;

__attribute__((used)) static void dispc_mgr_get_lcd_divisor(enum omap_channel channel, int *lck_div,
  int *pck_div)
{
 u32 l;
 l = dispc_read_reg(DISPC_DIVISORo(channel));
 *lck_div = FLD_GET(l, 23, 16);
 *pck_div = FLD_GET(l, 7, 0);
}
