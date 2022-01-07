
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_i2c_phy {int mode; int mutex; } ;
typedef enum s3fwrn5_mode { ____Placeholder_s3fwrn5_mode } s3fwrn5_mode ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum s3fwrn5_mode s3fwrn5_i2c_get_mode(void *phy_id)
{
 struct s3fwrn5_i2c_phy *phy = phy_id;
 enum s3fwrn5_mode mode;

 mutex_lock(&phy->mutex);

 mode = phy->mode;

 mutex_unlock(&phy->mutex);

 return mode;
}
