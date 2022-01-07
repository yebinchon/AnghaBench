
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSSERR (char*) ;
 int DSS_PLL_CONTROL ;
 int DSS_SDI_STATUS ;
 int ETIMEDOUT ;
 int REG_FLD_MOD (int ,int,int,int) ;
 int dispc_lcd_enable_signal (int) ;
 int dispc_pck_free_enable (int) ;
 int dss_read_reg (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int udelay (int) ;

int dss_sdi_enable(void)
{
 unsigned long timeout;

 dispc_pck_free_enable(1);


 REG_FLD_MOD(DSS_PLL_CONTROL, 1, 18, 18);
 udelay(1);


 REG_FLD_MOD(DSS_PLL_CONTROL, 1, 28, 28);


 timeout = jiffies + msecs_to_jiffies(500);
 while (dss_read_reg(DSS_SDI_STATUS) & (1 << 6)) {
  if (time_after_eq(jiffies, timeout)) {
   DSSERR("PLL lock request timed out\n");
   goto err1;
  }
 }


 REG_FLD_MOD(DSS_PLL_CONTROL, 0, 28, 28);


 timeout = jiffies + msecs_to_jiffies(500);
 while (!(dss_read_reg(DSS_SDI_STATUS) & (1 << 5))) {
  if (time_after_eq(jiffies, timeout)) {
   DSSERR("PLL lock timed out\n");
   goto err1;
  }
 }

 dispc_lcd_enable_signal(1);


 timeout = jiffies + msecs_to_jiffies(500);
 while (!(dss_read_reg(DSS_SDI_STATUS) & (1 << 2))) {
  if (time_after_eq(jiffies, timeout)) {
   DSSERR("SDI reset timed out\n");
   goto err2;
  }
 }

 return 0;

 err2:
 dispc_lcd_enable_signal(0);
 err1:

 REG_FLD_MOD(DSS_PLL_CONTROL, 0, 18, 18);

 dispc_pck_free_enable(0);

 return -ETIMEDOUT;
}
