
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_chip {int npwm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pwm_chip* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t npwm_show(struct device *parent, struct device_attribute *attr,
    char *buf)
{
 const struct pwm_chip *chip = dev_get_drvdata(parent);

 return sprintf(buf, "%u\n", chip->npwm);
}
