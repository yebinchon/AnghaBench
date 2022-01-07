
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
typedef enum dsi_cio_power_state { ____Placeholder_dsi_cio_power_state } dsi_cio_power_state ;


 int DSI_COMPLEXIO_CFG1 ;
 int DSSERR (char*,int) ;
 int ENODEV ;
 int FLD_GET (int ,int,int) ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int dsi_cio_power(struct platform_device *dsidev,
  enum dsi_cio_power_state state)
{
 int t = 0;


 REG_FLD_MOD(dsidev, DSI_COMPLEXIO_CFG1, state, 28, 27);


 while (FLD_GET(dsi_read_reg(dsidev, DSI_COMPLEXIO_CFG1),
   26, 25) != state) {
  if (++t > 1000) {
   DSSERR("failed to set complexio power state to "
     "%d\n", state);
   return -ENODEV;
  }
  udelay(1);
 }

 return 0;
}
