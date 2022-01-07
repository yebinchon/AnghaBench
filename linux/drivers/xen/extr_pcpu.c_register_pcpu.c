
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int groups; int (* release ) (struct device*) ;int id; int * bus; } ;
struct pcpu {int cpu_id; struct device dev; } ;


 int EINVAL ;
 int device_register (struct device*) ;
 int pcpu_dev_groups ;
 int pcpu_release (struct device*) ;
 int xen_pcpu_subsys ;

__attribute__((used)) static int register_pcpu(struct pcpu *pcpu)
{
 struct device *dev;
 int err = -EINVAL;

 if (!pcpu)
  return err;

 dev = &pcpu->dev;
 dev->bus = &xen_pcpu_subsys;
 dev->id = pcpu->cpu_id;
 dev->release = pcpu_release;
 dev->groups = pcpu_dev_groups;

 err = device_register(dev);
 if (err) {
  pcpu_release(dev);
  return err;
 }

 return 0;
}
