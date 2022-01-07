
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;


 int DSI_TIMING1 ;
 int DSSERR (char*) ;
 int EIO ;
 int FLD_MOD (int ,int,int,int) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int dsi_write_reg (struct platform_device*,int ,int ) ;
 scalar_t__ wait_for_bit_change (struct platform_device*,int ,int,int ) ;

__attribute__((used)) static int dsi_force_tx_stop_mode_io(struct platform_device *dsidev)
{
 u32 r;

 r = dsi_read_reg(dsidev, DSI_TIMING1);
 r = FLD_MOD(r, 1, 15, 15);
 dsi_write_reg(dsidev, DSI_TIMING1, r);

 if (wait_for_bit_change(dsidev, DSI_TIMING1, 15, 0) != 0) {
  DSSERR("TX_STOP bit not going down\n");
  return -EIO;
 }

 return 0;
}
