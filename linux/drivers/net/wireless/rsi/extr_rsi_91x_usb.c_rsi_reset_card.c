
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {scalar_t__ device_model; } ;


 int ERR_ZONE ;
 int INFO_ZONE ;
 int NWP_WWD_INTERRUPT_TIMER ;
 int NWP_WWD_INT_TIMER_CLKS ;
 int NWP_WWD_MODE_AND_RSTART ;
 int NWP_WWD_SYSTEM_RESET_TIMER ;
 int NWP_WWD_SYS_RESET_TIMER_CLKS ;
 int NWP_WWD_TIMER_DISABLE ;
 int RSI_9116_REG_SIZE ;
 int RSI_COMMON_REG_SIZE ;
 scalar_t__ RSI_DEV_9116 ;
 int RSI_FW_WDT_DISABLE_REQ ;
 int RSI_TA_HOLD_REG ;
 int RSI_ULP_TIMER_ENABLE ;
 int RSI_ULP_WRITE_0 ;
 int RSI_ULP_WRITE_2 ;
 int RSI_ULP_WRITE_50 ;
 int RSI_WATCH_DOG_DELAY_TIMER_1 ;
 int RSI_WATCH_DOG_DELAY_TIMER_2 ;
 int RSI_WATCH_DOG_TIMER_1 ;
 int RSI_WATCH_DOG_TIMER_2 ;
 int RSI_WATCH_DOG_TIMER_ENABLE ;
 int SWBL_REGOUT ;
 int msleep (int) ;
 int rsi_dbg (int ,char*) ;
 int rsi_usb_master_reg_write (struct rsi_hw*,int ,int,int) ;
 int usb_ulp_read_write (struct rsi_hw*,int ,int ,int) ;

__attribute__((used)) static int rsi_reset_card(struct rsi_hw *adapter)
{
 int ret;

 rsi_dbg(INFO_ZONE, "Resetting Card...\n");
 rsi_usb_master_reg_write(adapter, RSI_TA_HOLD_REG, 0xE, 4);




 msleep(100);

 ret = rsi_usb_master_reg_write(adapter, SWBL_REGOUT,
           RSI_FW_WDT_DISABLE_REQ,
           RSI_COMMON_REG_SIZE);
 if (ret < 0) {
  rsi_dbg(ERR_ZONE, "Disabling firmware watchdog timer failed\n");
  goto fail;
 }

 if (adapter->device_model != RSI_DEV_9116) {
  ret = usb_ulp_read_write(adapter, RSI_WATCH_DOG_TIMER_1,
      RSI_ULP_WRITE_2, 32);
  if (ret < 0)
   goto fail;
  ret = usb_ulp_read_write(adapter, RSI_WATCH_DOG_TIMER_2,
      RSI_ULP_WRITE_0, 32);
  if (ret < 0)
   goto fail;
  ret = usb_ulp_read_write(adapter, RSI_WATCH_DOG_DELAY_TIMER_1,
      RSI_ULP_WRITE_50, 32);
  if (ret < 0)
   goto fail;
  ret = usb_ulp_read_write(adapter, RSI_WATCH_DOG_DELAY_TIMER_2,
      RSI_ULP_WRITE_0, 32);
  if (ret < 0)
   goto fail;
  ret = usb_ulp_read_write(adapter, RSI_WATCH_DOG_TIMER_ENABLE,
      RSI_ULP_TIMER_ENABLE, 32);
  if (ret < 0)
   goto fail;
 } else {
  if ((rsi_usb_master_reg_write(adapter,
           NWP_WWD_INTERRUPT_TIMER,
           NWP_WWD_INT_TIMER_CLKS,
           RSI_9116_REG_SIZE)) < 0) {
   goto fail;
  }
  if ((rsi_usb_master_reg_write(adapter,
           NWP_WWD_SYSTEM_RESET_TIMER,
           NWP_WWD_SYS_RESET_TIMER_CLKS,
           RSI_9116_REG_SIZE)) < 0) {
   goto fail;
  }
  if ((rsi_usb_master_reg_write(adapter,
           NWP_WWD_MODE_AND_RSTART,
           NWP_WWD_TIMER_DISABLE,
           RSI_9116_REG_SIZE)) < 0) {
   goto fail;
  }
 }

 rsi_dbg(INFO_ZONE, "Reset card done\n");
 return ret;

fail:
 rsi_dbg(ERR_ZONE, "Reset card failed\n");
 return ret;
}
