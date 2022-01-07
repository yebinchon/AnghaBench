
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int calibrate; } ;
struct ab8500_fg {int calib_state; int fg_periodic_work; int fg_wq; TYPE_1__ flags; int dev; } ;





 int AB8500_GASG_CC_CTRL_REG ;
 int AB8500_GAS_GAUGE ;
 int CC_INTAVGOFFSET_ENA ;
 int CC_INT_CAL_N_AVG_MASK ;
 int CC_INT_CAL_SAMPLES_8 ;
 int CC_MUXOFFSET ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void ab8500_fg_algorithm_calibrate(struct ab8500_fg *di)
{
 int ret;

 switch (di->calib_state) {
 case 129:
  dev_dbg(di->dev, "Calibration ongoing...\n");

  ret = abx500_mask_and_set_register_interruptible(di->dev,
   AB8500_GAS_GAUGE, AB8500_GASG_CC_CTRL_REG,
   CC_INT_CAL_N_AVG_MASK, CC_INT_CAL_SAMPLES_8);
  if (ret < 0)
   goto err;

  ret = abx500_mask_and_set_register_interruptible(di->dev,
   AB8500_GAS_GAUGE, AB8500_GASG_CC_CTRL_REG,
   CC_INTAVGOFFSET_ENA, CC_INTAVGOFFSET_ENA);
  if (ret < 0)
   goto err;
  di->calib_state = 128;
  break;
 case 130:
  ret = abx500_mask_and_set_register_interruptible(di->dev,
   AB8500_GAS_GAUGE, AB8500_GASG_CC_CTRL_REG,
   CC_MUXOFFSET, CC_MUXOFFSET);
  if (ret < 0)
   goto err;
  di->flags.calibrate = 0;
  dev_dbg(di->dev, "Calibration done...\n");
  queue_delayed_work(di->fg_wq, &di->fg_periodic_work, 0);
  break;
 case 128:
  dev_dbg(di->dev, "Calibration WFI\n");
 default:
  break;
 }
 return;
err:

 dev_err(di->dev, "failed to calibrate the CC\n");
 di->flags.calibrate = 0;
 di->calib_state = 129;
 queue_delayed_work(di->fg_wq, &di->fg_periodic_work, 0);
}
