
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_dev {int dev; } ;


 int APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER ;
 int APEX_BAR2_REG_SCU_2 ;
 int APEX_BAR2_REG_SCU_3 ;
 int APEX_BAR2_REG_USER_HIB_DMA_PAUSE ;
 int APEX_BAR2_REG_USER_HIB_DMA_PAUSED ;
 int APEX_BAR_INDEX ;
 int APEX_RESET_DELAY ;
 int APEX_RESET_RETRY ;
 int BIT (int) ;
 int ETIMEDOUT ;
 scalar_t__ bypass_top_level ;
 int dev_err (int ,char*,int) ;
 int gasket_dev_write_64 (struct gasket_dev*,int,int ,int ) ;
 int gasket_read_modify_write_32 (struct gasket_dev*,int ,int ,int,int,int) ;
 int gasket_read_modify_write_64 (struct gasket_dev*,int ,int ,int,int,int) ;
 scalar_t__ gasket_wait_with_reschedule (struct gasket_dev*,int ,int ,int,int,int,int) ;

__attribute__((used)) static int apex_enter_reset(struct gasket_dev *gasket_dev)
{
 if (bypass_top_level)
  return 0;







 gasket_read_modify_write_64(gasket_dev, APEX_BAR_INDEX,
        APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
        0x0, 1, 32);


 gasket_dev_write_64(gasket_dev, 1, APEX_BAR_INDEX,
       APEX_BAR2_REG_USER_HIB_DMA_PAUSE);


 if (gasket_wait_with_reschedule(gasket_dev, APEX_BAR_INDEX,
     APEX_BAR2_REG_USER_HIB_DMA_PAUSED, 1, 1,
     APEX_RESET_DELAY, APEX_RESET_RETRY)) {
  dev_err(gasket_dev->dev,
   "DMAs did not quiesce within timeout (%d ms)\n",
   APEX_RESET_RETRY * APEX_RESET_DELAY);
  return -ETIMEDOUT;
 }


 gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
        APEX_BAR2_REG_SCU_2, 0x1, 2, 2);


 gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
        APEX_BAR2_REG_SCU_2, 0x1, 2, 18);


 gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
        APEX_BAR2_REG_SCU_3, 0x3, 2, 14);


 if (gasket_wait_with_reschedule(gasket_dev, APEX_BAR_INDEX,
     APEX_BAR2_REG_SCU_3, BIT(6), BIT(6),
     APEX_RESET_DELAY, APEX_RESET_RETRY)) {
  dev_err(gasket_dev->dev,
   "RAM did not shut down within timeout (%d ms)\n",
   APEX_RESET_RETRY * APEX_RESET_DELAY);
  return -ETIMEDOUT;
 }

 return 0;
}
