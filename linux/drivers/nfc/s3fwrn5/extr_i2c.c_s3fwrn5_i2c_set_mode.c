
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_i2c_phy {int mode; int irq_skip; int mutex; int gpio_en; int gpio_fw_wake; } ;
typedef enum s3fwrn5_mode { ____Placeholder_s3fwrn5_mode } s3fwrn5_mode ;


 int S3FWRN5_EN_WAIT_TIME ;
 int S3FWRN5_MODE_COLD ;
 int S3FWRN5_MODE_FW ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void s3fwrn5_i2c_set_mode(void *phy_id, enum s3fwrn5_mode mode)
{
 struct s3fwrn5_i2c_phy *phy = phy_id;

 mutex_lock(&phy->mutex);

 if (phy->mode == mode)
  goto out;

 phy->mode = mode;

 gpio_set_value(phy->gpio_en, 1);
 gpio_set_value(phy->gpio_fw_wake, 0);
 if (mode == S3FWRN5_MODE_FW)
  gpio_set_value(phy->gpio_fw_wake, 1);

 if (mode != S3FWRN5_MODE_COLD) {
  msleep(S3FWRN5_EN_WAIT_TIME);
  gpio_set_value(phy->gpio_en, 0);
  msleep(S3FWRN5_EN_WAIT_TIME/2);
 }

 phy->irq_skip = 1;

out:
 mutex_unlock(&phy->mutex);
}
