
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adp8870_bl {int lock; int client; } ;
typedef int ssize_t ;


 int ADP8870_PH1LEVH ;
 int ADP8870_PH1LEVL ;
 int adp8870_read (int ,int ,int*) ;
 struct adp8870_bl* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t adp8870_bl_ambient_light_level_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct adp8870_bl *data = dev_get_drvdata(dev);
 int error;
 uint8_t reg_val;
 uint16_t ret_val;

 mutex_lock(&data->lock);
 error = adp8870_read(data->client, ADP8870_PH1LEVL, &reg_val);
 if (error < 0) {
  mutex_unlock(&data->lock);
  return error;
 }
 ret_val = reg_val;
 error = adp8870_read(data->client, ADP8870_PH1LEVH, &reg_val);
 mutex_unlock(&data->lock);

 if (error < 0)
  return error;


 ret_val += (reg_val & 0x1F) << 8;

 return sprintf(buf, "%u\n", ret_val);
}
