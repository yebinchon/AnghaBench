
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef enum sbs_battery_mode { ____Placeholder_sbs_battery_mode } sbs_battery_mode ;


 int BATTERY_MODE_AMPS ;
 int BATTERY_MODE_MASK ;
 int BATTERY_MODE_OFFSET ;
 int sbs_read_word_data (struct i2c_client*,int ) ;
 int sbs_write_word_data (struct i2c_client*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static enum sbs_battery_mode sbs_set_battery_mode(struct i2c_client *client,
 enum sbs_battery_mode mode)
{
 int ret, original_val;

 original_val = sbs_read_word_data(client, BATTERY_MODE_OFFSET);
 if (original_val < 0)
  return original_val;

 if ((original_val & BATTERY_MODE_MASK) == mode)
  return mode;

 if (mode == BATTERY_MODE_AMPS)
  ret = original_val & ~BATTERY_MODE_MASK;
 else
  ret = original_val | BATTERY_MODE_MASK;

 ret = sbs_write_word_data(client, BATTERY_MODE_OFFSET, ret);
 if (ret < 0)
  return ret;

 usleep_range(1000, 2000);

 return original_val & BATTERY_MODE_MASK;
}
