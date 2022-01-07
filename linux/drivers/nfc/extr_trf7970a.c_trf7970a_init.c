
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {int state; int io_ctrl; int modulator_sys_clk_ctrl; int iso_ctrl; int dev; scalar_t__ special_fcn_reg1; int chip_status_ctrl; } ;


 int TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS ;
 int TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS_WLH_96 ;
 int TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS_WLL_32 ;
 int TRF7970A_CHIP_STATUS_RF_ON ;
 int TRF7970A_CMD_IDLE ;
 int TRF7970A_CMD_SOFT_INIT ;
 int TRF7970A_MODULATOR_SYS_CLK_CTRL ;
 int TRF7970A_NFC_TARGET_LEVEL ;
 int TRF7970A_REG_IO_CTRL ;
 int TRF7970A_REG_IO_CTRL_VRS (int) ;
 int TRF7970A_SPECIAL_FCN_REG1 ;
 int dev_dbg (int ,char*,int) ;
 int trf7970a_cmd (struct trf7970a*,int ) ;
 int trf7970a_write (struct trf7970a*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int trf7970a_init(struct trf7970a *trf)
{
 int ret;

 dev_dbg(trf->dev, "Initializing device - state: %d\n", trf->state);

 ret = trf7970a_cmd(trf, TRF7970A_CMD_SOFT_INIT);
 if (ret)
  goto err_out;

 ret = trf7970a_cmd(trf, TRF7970A_CMD_IDLE);
 if (ret)
  goto err_out;

 ret = trf7970a_write(trf, TRF7970A_REG_IO_CTRL,
        trf->io_ctrl | TRF7970A_REG_IO_CTRL_VRS(0x1));
 if (ret)
  goto err_out;

 ret = trf7970a_write(trf, TRF7970A_NFC_TARGET_LEVEL, 0);
 if (ret)
  goto err_out;

 usleep_range(1000, 2000);

 trf->chip_status_ctrl &= ~TRF7970A_CHIP_STATUS_RF_ON;

 ret = trf7970a_write(trf, TRF7970A_MODULATOR_SYS_CLK_CTRL,
        trf->modulator_sys_clk_ctrl);
 if (ret)
  goto err_out;

 ret = trf7970a_write(trf, TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS,
        TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS_WLH_96 |
        TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS_WLL_32);
 if (ret)
  goto err_out;

 ret = trf7970a_write(trf, TRF7970A_SPECIAL_FCN_REG1, 0);
 if (ret)
  goto err_out;

 trf->special_fcn_reg1 = 0;

 trf->iso_ctrl = 0xff;
 return 0;

err_out:
 dev_dbg(trf->dev, "Couldn't init device: %d\n", ret);
 return ret;
}
