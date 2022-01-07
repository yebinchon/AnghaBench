
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {scalar_t__ state; int aborting; int dev; int chip_status_ctrl; } ;


 int TRF7970A_CHIP_STATUS_CTRL ;
 int TRF7970A_CHIP_STATUS_RF_ON ;
 scalar_t__ TRF7970A_ST_PWR_OFF ;
 scalar_t__ TRF7970A_ST_RF_OFF ;
 int dev_dbg (int ,char*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int trf7970a_write (struct trf7970a*,int ,int ) ;

__attribute__((used)) static void trf7970a_switch_rf_off(struct trf7970a *trf)
{
 if ((trf->state == TRF7970A_ST_PWR_OFF) ||
     (trf->state == TRF7970A_ST_RF_OFF))
  return;

 dev_dbg(trf->dev, "Switching rf off\n");

 trf->chip_status_ctrl &= ~TRF7970A_CHIP_STATUS_RF_ON;

 trf7970a_write(trf, TRF7970A_CHIP_STATUS_CTRL, trf->chip_status_ctrl);

 trf->aborting = 0;
 trf->state = TRF7970A_ST_RF_OFF;

 pm_runtime_mark_last_busy(trf->dev);
 pm_runtime_put_autosuspend(trf->dev);
}
