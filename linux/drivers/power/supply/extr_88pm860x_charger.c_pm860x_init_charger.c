
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_charger_info {int online; int allowed; int lock; int state; int i2c; } ;


 int FSM_INIT ;
 int PM8607_STATUS_2 ;
 int STATUS2_CHG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm860x_reg_read (int ,int ) ;
 int set_charging_fsm (struct pm860x_charger_info*) ;

__attribute__((used)) static int pm860x_init_charger(struct pm860x_charger_info *info)
{
 int ret;

 ret = pm860x_reg_read(info->i2c, PM8607_STATUS_2);
 if (ret < 0)
  return ret;

 mutex_lock(&info->lock);
 info->state = FSM_INIT;
 if (ret & STATUS2_CHG) {
  info->online = 1;
  info->allowed = 1;
 } else {
  info->online = 0;
  info->allowed = 0;
 }
 mutex_unlock(&info->lock);

 set_charging_fsm(info);
 return 0;
}
