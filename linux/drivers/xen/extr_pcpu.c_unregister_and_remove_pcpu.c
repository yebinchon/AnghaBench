
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pcpu {struct device dev; } ;


 int device_unregister (struct device*) ;

__attribute__((used)) static void unregister_and_remove_pcpu(struct pcpu *pcpu)
{
 struct device *dev;

 if (!pcpu)
  return;

 dev = &pcpu->dev;

 device_unregister(dev);
}
