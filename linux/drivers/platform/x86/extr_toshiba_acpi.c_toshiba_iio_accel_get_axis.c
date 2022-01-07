
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum toshiba_iio_accel_chan { ____Placeholder_toshiba_iio_accel_chan } toshiba_iio_accel_chan ;





 int HCI_ACCEL_DIRECTION_MASK ;
 int HCI_ACCEL_MASK ;
 int HCI_MISC_SHIFT ;
 int toshiba_accelerometer_get (int ,int*,int*) ;
 int toshiba_acpi ;

__attribute__((used)) static int toshiba_iio_accel_get_axis(enum toshiba_iio_accel_chan chan)
{
 u32 xyval, zval;
 int ret;

 ret = toshiba_accelerometer_get(toshiba_acpi, &xyval, &zval);
 if (ret < 0)
  return ret;

 switch (chan) {
 case 130:
  return xyval & HCI_ACCEL_DIRECTION_MASK ?
   -(xyval & HCI_ACCEL_MASK) : xyval & HCI_ACCEL_MASK;
 case 129:
  return (xyval >> HCI_MISC_SHIFT) & HCI_ACCEL_DIRECTION_MASK ?
   -((xyval >> HCI_MISC_SHIFT) & HCI_ACCEL_MASK) :
   (xyval >> HCI_MISC_SHIFT) & HCI_ACCEL_MASK;
 case 128:
  return zval & HCI_ACCEL_DIRECTION_MASK ?
   -(zval & HCI_ACCEL_MASK) : zval & HCI_ACCEL_MASK;
 }

 return ret;
}
