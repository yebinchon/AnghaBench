
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct wl1271 {int * ptable; } ;
struct TYPE_4__ {int n; int m; int p; int q; scalar_t__ swallow; } ;
struct TYPE_3__ {int n; int m; } ;


 int DEBUG_BOOT ;
 size_t PART_TOP_PRCM_ELP_SOC ;
 int PLLSH_COEX_PLL_M ;
 int PLLSH_COEX_PLL_N ;
 int PLLSH_COEX_PLL_SWALLOW_EN ;
 int PLLSH_COEX_PLL_SWALLOW_EN_VAL1 ;
 int PLLSH_COEX_PLL_SWALLOW_EN_VAL2 ;
 int PLLSH_WCS_PLL_M ;
 int PLLSH_WCS_PLL_N ;
 int PLLSH_WCS_PLL_P_FACTOR_CFG_1 ;
 int PLLSH_WCS_PLL_P_FACTOR_CFG_1_MASK ;
 int PLLSH_WCS_PLL_P_FACTOR_CFG_2 ;
 int PLLSH_WCS_PLL_P_FACTOR_CFG_2_MASK ;
 int PLLSH_WCS_PLL_Q_FACTOR_CFG_1 ;
 int PLLSH_WCS_PLL_Q_FACTOR_CFG_1_MASK ;
 int PLLSH_WCS_PLL_Q_FACTOR_CFG_2 ;
 int PLLSH_WCS_PLL_Q_FACTOR_CFG_2_MASK ;
 int PLLSH_WCS_PLL_SWALLOW_EN ;
 int PLLSH_WCS_PLL_SWALLOW_EN_VAL2 ;
 int PLLSH_WL_PLL_EN ;
 int PLLSH_WL_PLL_EN_VAL1 ;
 int PLLSH_WL_PLL_EN_VAL2 ;
 int PLLSH_WL_PLL_SEL ;
 int PLLSH_WL_PLL_SEL_WCS_PLL ;
 int PRIMARY_CLK_DETECT ;
 int udelay (int) ;
 int wl1271_debug (int ,char*,size_t,int,int,int,int,char*) ;
 TYPE_2__* wl18xx_clk_table ;
 TYPE_1__* wl18xx_clk_table_coex ;
 int wl18xx_top_reg_read (struct wl1271*,int ,size_t*) ;
 int wl18xx_top_reg_write (struct wl1271*,int ,int) ;
 int wlcore_set_partition (struct wl1271*,int *) ;

__attribute__((used)) static int wl18xx_set_clk(struct wl1271 *wl)
{
 u16 clk_freq;
 int ret;

 ret = wlcore_set_partition(wl, &wl->ptable[PART_TOP_PRCM_ELP_SOC]);
 if (ret < 0)
  goto out;



 ret = wl18xx_top_reg_read(wl, PRIMARY_CLK_DETECT, &clk_freq);
 if (ret < 0)
  goto out;

 wl1271_debug(DEBUG_BOOT, "clock freq %d (%d, %d, %d, %d, %s)", clk_freq,
       wl18xx_clk_table[clk_freq].n, wl18xx_clk_table[clk_freq].m,
       wl18xx_clk_table[clk_freq].p, wl18xx_clk_table[clk_freq].q,
       wl18xx_clk_table[clk_freq].swallow ? "swallow" : "spit");


 ret = wl18xx_top_reg_write(wl, PLLSH_COEX_PLL_N,
       wl18xx_clk_table_coex[clk_freq].n);
 if (ret < 0)
  goto out;

 ret = wl18xx_top_reg_write(wl, PLLSH_COEX_PLL_M,
       wl18xx_clk_table_coex[clk_freq].m);
 if (ret < 0)
  goto out;


 ret = wl18xx_top_reg_write(wl, PLLSH_COEX_PLL_SWALLOW_EN,
       PLLSH_COEX_PLL_SWALLOW_EN_VAL1);
 if (ret < 0)
  goto out;

 ret = wl18xx_top_reg_write(wl, PLLSH_WCS_PLL_N,
       wl18xx_clk_table[clk_freq].n);
 if (ret < 0)
  goto out;

 ret = wl18xx_top_reg_write(wl, PLLSH_WCS_PLL_M,
       wl18xx_clk_table[clk_freq].m);
 if (ret < 0)
  goto out;

 if (wl18xx_clk_table[clk_freq].swallow) {

  ret = wl18xx_top_reg_write(wl, PLLSH_WCS_PLL_Q_FACTOR_CFG_1,
        wl18xx_clk_table[clk_freq].q &
        PLLSH_WCS_PLL_Q_FACTOR_CFG_1_MASK);
  if (ret < 0)
   goto out;


  ret = wl18xx_top_reg_write(wl, PLLSH_WCS_PLL_Q_FACTOR_CFG_2,
     (wl18xx_clk_table[clk_freq].q >> 16) &
     PLLSH_WCS_PLL_Q_FACTOR_CFG_2_MASK);
  if (ret < 0)
   goto out;


  ret = wl18xx_top_reg_write(wl, PLLSH_WCS_PLL_P_FACTOR_CFG_1,
        wl18xx_clk_table[clk_freq].p &
        PLLSH_WCS_PLL_P_FACTOR_CFG_1_MASK);
  if (ret < 0)
   goto out;


  ret = wl18xx_top_reg_write(wl, PLLSH_WCS_PLL_P_FACTOR_CFG_2,
     (wl18xx_clk_table[clk_freq].p >> 16) &
     PLLSH_WCS_PLL_P_FACTOR_CFG_2_MASK);
  if (ret < 0)
   goto out;
 } else {
  ret = wl18xx_top_reg_write(wl, PLLSH_WCS_PLL_SWALLOW_EN,
        PLLSH_WCS_PLL_SWALLOW_EN_VAL2);
  if (ret < 0)
   goto out;
 }


 ret = wl18xx_top_reg_write(wl, PLLSH_WL_PLL_SEL,
       PLLSH_WL_PLL_SEL_WCS_PLL);
 if (ret < 0)
  goto out;


 ret = wl18xx_top_reg_write(wl, PLLSH_WL_PLL_EN, PLLSH_WL_PLL_EN_VAL1);
 if (ret < 0)
  goto out;

 udelay(1000);


 ret = wl18xx_top_reg_write(wl, PLLSH_WL_PLL_EN, PLLSH_WL_PLL_EN_VAL2);
 if (ret < 0)
  goto out;


 ret = wl18xx_top_reg_write(wl, PLLSH_COEX_PLL_SWALLOW_EN,
       PLLSH_COEX_PLL_SWALLOW_EN_VAL2);

out:
 return ret;
}
