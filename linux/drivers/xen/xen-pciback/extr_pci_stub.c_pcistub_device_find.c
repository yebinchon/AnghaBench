
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcistub_device {int dummy; } ;


 struct pcistub_device* pcistub_device_find_locked (int,int,int,int) ;
 int pcistub_device_get (struct pcistub_device*) ;
 int pcistub_devices_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct pcistub_device *pcistub_device_find(int domain, int bus,
        int slot, int func)
{
 struct pcistub_device *psdev;
 unsigned long flags;

 spin_lock_irqsave(&pcistub_devices_lock, flags);

 psdev = pcistub_device_find_locked(domain, bus, slot, func);
 if (psdev)
  pcistub_device_get(psdev);

 spin_unlock_irqrestore(&pcistub_devices_lock, flags);
 return psdev;
}
