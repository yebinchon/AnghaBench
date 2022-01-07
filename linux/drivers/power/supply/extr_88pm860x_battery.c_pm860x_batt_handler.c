
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int present; int lock; int temp_type; int i2c; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PM8607_STATUS_2 ;
 int PM860X_TEMP_TBAT ;
 int PM860X_TEMP_TINT ;
 int STATUS2_BAT ;
 int ccnt_data ;
 int clear_ccnt (struct pm860x_battery_info*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm860x_reg_read (int ,int ) ;

__attribute__((used)) static irqreturn_t pm860x_batt_handler(int irq, void *data)
{
 struct pm860x_battery_info *info = data;
 int ret;

 mutex_lock(&info->lock);
 ret = pm860x_reg_read(info->i2c, PM8607_STATUS_2);
 if (ret & STATUS2_BAT) {
  info->present = 1;
  info->temp_type = PM860X_TEMP_TBAT;
 } else {
  info->present = 0;
  info->temp_type = PM860X_TEMP_TINT;
 }
 mutex_unlock(&info->lock);

 clear_ccnt(info, &ccnt_data);
 return IRQ_HANDLED;
}
