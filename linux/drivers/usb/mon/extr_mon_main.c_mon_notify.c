
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;


 int mon_bus_add (void*) ;
 int mon_bus_remove (void*) ;

__attribute__((used)) static int mon_notify(struct notifier_block *self, unsigned long action,
        void *dev)
{
 switch (action) {
 case 129:
  mon_bus_add(dev);
  break;
 case 128:
  mon_bus_remove(dev);
 }
 return NOTIFY_OK;
}
