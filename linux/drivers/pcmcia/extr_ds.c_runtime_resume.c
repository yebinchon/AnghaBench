
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int pcmcia_dev_resume (struct device*) ;

__attribute__((used)) static int runtime_resume(struct device *dev)
{
 int rc;

 device_lock(dev);
 rc = pcmcia_dev_resume(dev);
 device_unlock(dev);
 return rc;
}
