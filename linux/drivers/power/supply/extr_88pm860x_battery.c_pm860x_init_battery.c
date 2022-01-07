
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {scalar_t__ temp_type; int present; int start_soc; char* last_capacity; int dev; int i2c; int lock; } ;


 int BAT_WU_LOG ;
 int CC6_BAT_DET_GPADC1 ;
 int CCNT_AVG_SEL ;
 int GPBIAS2_GPADC1_SET ;
 int GPMISC1_GPADC_EN ;
 int MEAS1_GP1 ;
 int MEAS1_TINT ;
 int MEAS3_BAT_DET ;
 int MEAS3_CC ;
 int MEAS3_IBAT ;
 int OCV_MODE_ACTIVE ;
 int PM8607_CCNT ;
 int PM8607_CHG_CTRL6 ;
 int PM8607_GPADC_MISC1 ;
 int PM8607_GP_BIAS2 ;
 int PM8607_MEAS_EN1 ;
 int PM8607_MEAS_EN3 ;
 int PM8607_MEAS_OFF_TIME1 ;
 int PM8607_MEAS_OFF_TIME2 ;
 int PM8607_POWER_UP_LOG ;
 int PM8607_RTC1 ;
 int PM8607_RTC_MISC2 ;
 int PM8607_STATUS_2 ;
 scalar_t__ PM860X_TEMP_TBAT ;
 scalar_t__ PM860X_TEMP_TINT ;
 int STATUS2_BAT ;
 int calc_soc (struct pm860x_battery_info*,int ,int*) ;
 int dev_dbg (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* pm860x_reg_read (int ,int ) ;
 int pm860x_reg_write (int ,int ,int) ;
 int pm860x_set_bits (int ,int ,int,int) ;

__attribute__((used)) static void pm860x_init_battery(struct pm860x_battery_info *info)
{
 unsigned char buf[2];
 int ret;
 int data;
 int bat_remove;
 int soc;


 data = MEAS1_GP1;
 if (info->temp_type == PM860X_TEMP_TINT)
  data |= MEAS1_TINT;
 ret = pm860x_set_bits(info->i2c, PM8607_MEAS_EN1, data, data);
 if (ret)
  goto out;


 data = MEAS3_IBAT | MEAS3_BAT_DET | MEAS3_CC;
 ret = pm860x_set_bits(info->i2c, PM8607_MEAS_EN3, data, data);
 if (ret)
  goto out;


 ret = pm860x_reg_write(info->i2c, PM8607_MEAS_OFF_TIME1, 0x82);
 if (ret)
  goto out;
 ret = pm860x_reg_write(info->i2c, PM8607_MEAS_OFF_TIME2, 0x6c);
 if (ret)
  goto out;


 ret = pm860x_set_bits(info->i2c, PM8607_GPADC_MISC1,
       GPMISC1_GPADC_EN, GPMISC1_GPADC_EN);
 if (ret < 0)
  goto out;


 ret = pm860x_set_bits(info->i2c, PM8607_CHG_CTRL6,
       CC6_BAT_DET_GPADC1, CC6_BAT_DET_GPADC1);
 if (ret < 0)
  goto out;

 ret = pm860x_set_bits(info->i2c, PM8607_CCNT, 7 << 3,
         CCNT_AVG_SEL);
 if (ret < 0)
  goto out;


 ret = pm860x_set_bits(info->i2c, PM8607_GP_BIAS2, 0xF << 4,
         GPBIAS2_GPADC1_SET);
 if (ret < 0)
  goto out;


 mutex_lock(&info->lock);
 ret = pm860x_reg_read(info->i2c, PM8607_STATUS_2);
 if (ret < 0) {
  mutex_unlock(&info->lock);
  goto out;
 }
 if (ret & STATUS2_BAT) {
  info->present = 1;
  info->temp_type = PM860X_TEMP_TBAT;
 } else {
  info->present = 0;
  info->temp_type = PM860X_TEMP_TINT;
 }
 mutex_unlock(&info->lock);

 calc_soc(info, OCV_MODE_ACTIVE, &soc);

 data = pm860x_reg_read(info->i2c, PM8607_POWER_UP_LOG);
 bat_remove = data & BAT_WU_LOG;

 dev_dbg(info->dev, "battery wake up? %s\n",
  bat_remove != 0 ? "yes" : "no");


 if (bat_remove == 0) {
  buf[0] = pm860x_reg_read(info->i2c, PM8607_RTC_MISC2);
  buf[1] = pm860x_reg_read(info->i2c, PM8607_RTC1);
  data = ((buf[1] & 0x3) << 5) | ((buf[0] >> 3) & 0x1F);
  if (data > soc + 15)
   info->start_soc = soc;
  else if (data < soc - 15)
   info->start_soc = soc;
  else
   info->start_soc = data;
  dev_dbg(info->dev, "soc_rtc %d, soc_ocv :%d\n", data, soc);
 } else {
  pm860x_set_bits(info->i2c, PM8607_POWER_UP_LOG,
    BAT_WU_LOG, BAT_WU_LOG);
  info->start_soc = soc;
 }
 info->last_capacity = info->start_soc;
 dev_dbg(info->dev, "init soc : %d\n", info->last_capacity);
out:
 return;
}
