
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSS_PLL_CONTROL ;
 int REG_FLD_MOD (int ,int ,int,int) ;
 int dispc_lcd_enable_signal (int ) ;
 int dispc_pck_free_enable (int ) ;

void dss_sdi_disable(void)
{
 dispc_lcd_enable_signal(0);

 dispc_pck_free_enable(0);


 REG_FLD_MOD(DSS_PLL_CONTROL, 0, 18, 18);
}
