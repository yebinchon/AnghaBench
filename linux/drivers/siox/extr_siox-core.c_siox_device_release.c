
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct siox_device*) ;
 struct siox_device* to_siox_device (struct device*) ;

__attribute__((used)) static void siox_device_release(struct device *dev)
{
 struct siox_device *sdevice = to_siox_device(dev);

 kfree(sdevice);
}
