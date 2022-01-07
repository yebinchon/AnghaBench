
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_power_info {int adc; } ;


 int EINVAL ;
 int MAX8925_ADC_ISNS ;
 int MAX8925_ADC_VBBATT ;
 int MAX8925_ADC_VCHG ;
 int MAX8925_ADC_VMBATT ;
 int MAX8925_CMD_ISNS ;
 int MAX8925_CMD_VBBATT ;
 int MAX8925_CMD_VCHG ;
 int MAX8925_CMD_VMBATT ;




 int max8925_bulk_read (int ,int,int,unsigned char*) ;
 int max8925_reg_write (int ,int,int ) ;

__attribute__((used)) static int start_measure(struct max8925_power_info *info, int type)
{
 unsigned char buf[2] = {0, 0};
 int meas_cmd;
 int meas_reg = 0, ret;

 switch (type) {
 case 129:
  meas_cmd = MAX8925_CMD_VCHG;
  meas_reg = MAX8925_ADC_VCHG;
  break;
 case 130:
  meas_cmd = MAX8925_CMD_VBBATT;
  meas_reg = MAX8925_ADC_VBBATT;
  break;
 case 128:
  meas_cmd = MAX8925_CMD_VMBATT;
  meas_reg = MAX8925_ADC_VMBATT;
  break;
 case 131:
  meas_cmd = MAX8925_CMD_ISNS;
  meas_reg = MAX8925_ADC_ISNS;
  break;
 default:
  return -EINVAL;
 }

 max8925_reg_write(info->adc, meas_cmd, 0);
 max8925_bulk_read(info->adc, meas_reg, 2, buf);
 ret = ((buf[0]<<8) | buf[1]) >> 4;

 return ret;
}
