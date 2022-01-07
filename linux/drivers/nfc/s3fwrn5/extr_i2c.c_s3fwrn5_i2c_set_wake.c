
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_i2c_phy {int mutex; int gpio_fw_wake; } ;


 int S3FWRN5_EN_WAIT_TIME ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void s3fwrn5_i2c_set_wake(void *phy_id, bool wake)
{
 struct s3fwrn5_i2c_phy *phy = phy_id;

 mutex_lock(&phy->mutex);
 gpio_set_value(phy->gpio_fw_wake, wake);
 msleep(S3FWRN5_EN_WAIT_TIME/2);
 mutex_unlock(&phy->mutex);
}
