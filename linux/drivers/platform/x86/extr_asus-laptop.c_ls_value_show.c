
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_laptop {int dummy; } ;
typedef int ssize_t ;


 int PEGA_READ_ALS_H ;
 int PEGA_READ_ALS_L ;
 struct asus_laptop* dev_get_drvdata (struct device*) ;
 int pega_int_read (struct asus_laptop*,int ,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ls_value_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct asus_laptop *asus = dev_get_drvdata(dev);
 int err, hi, lo;

 err = pega_int_read(asus, PEGA_READ_ALS_H, &hi);
 if (!err)
  err = pega_int_read(asus, PEGA_READ_ALS_L, &lo);
 if (!err)
  return sprintf(buf, "%d\n", 10 * hi + lo);
 return err;
}
