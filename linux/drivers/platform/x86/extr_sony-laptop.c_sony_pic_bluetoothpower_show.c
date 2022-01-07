
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bluetooth_power; int lock; } ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;
 TYPE_1__ spic_dev ;

__attribute__((used)) static ssize_t sony_pic_bluetoothpower_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 ssize_t count = 0;
 mutex_lock(&spic_dev.lock);
 count = snprintf(buffer, PAGE_SIZE, "%d\n", spic_dev.bluetooth_power);
 mutex_unlock(&spic_dev.lock);
 return count;
}
