
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct compal_data {int curr_pwm; } ;
typedef int ssize_t ;


 struct compal_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t pwm_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct compal_data *data = dev_get_drvdata(dev);
 return sprintf(buf, "%hhu\n", data->curr_pwm);
}
