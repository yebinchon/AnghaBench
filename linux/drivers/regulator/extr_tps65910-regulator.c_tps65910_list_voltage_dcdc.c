
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int BUG () ;
 int EINVAL ;



 unsigned int VDD1_2_MIN_VOLT ;
 unsigned int VDD1_2_NUM_VOLT_FINE ;
 unsigned int VDD1_2_OFFSET ;
 unsigned int VDDCTRL_MIN_VOLT ;
 unsigned int VDDCTRL_OFFSET ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int tps65910_list_voltage_dcdc(struct regulator_dev *dev,
     unsigned selector)
{
 int volt, mult = 1, id = rdev_get_id(dev);

 switch (id) {
 case 130:
 case 129:
  mult = (selector / VDD1_2_NUM_VOLT_FINE) + 1;
  volt = VDD1_2_MIN_VOLT +
   (selector % VDD1_2_NUM_VOLT_FINE) * VDD1_2_OFFSET;
  break;
 case 128:
  volt = VDDCTRL_MIN_VOLT + (selector * VDDCTRL_OFFSET);
  break;
 default:
  BUG();
  return -EINVAL;
 }

 return volt * 100 * mult;
}
