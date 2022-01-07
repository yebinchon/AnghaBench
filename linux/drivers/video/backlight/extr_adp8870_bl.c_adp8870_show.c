
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device {int dummy; } ;
struct adp8870_bl {int lock; int client; } ;
typedef int ssize_t ;


 int adp8870_read (int ,int,int*) ;
 struct adp8870_bl* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t adp8870_show(struct device *dev, char *buf, int reg)
{
 struct adp8870_bl *data = dev_get_drvdata(dev);
 int error;
 uint8_t reg_val;

 mutex_lock(&data->lock);
 error = adp8870_read(data->client, reg, &reg_val);
 mutex_unlock(&data->lock);

 if (error < 0)
  return error;

 return sprintf(buf, "%u\n", reg_val);
}
