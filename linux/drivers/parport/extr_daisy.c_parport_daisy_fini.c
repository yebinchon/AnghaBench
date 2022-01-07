
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
struct daisydev {struct daisydev* next; struct parport* port; } ;


 int kfree (struct daisydev*) ;
 scalar_t__ numdevs ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct daisydev* topology ;
 int topology_lock ;

void parport_daisy_fini(struct parport *port)
{
 struct daisydev **p;

 spin_lock(&topology_lock);
 p = &topology;
 while (*p) {
  struct daisydev *dev = *p;
  if (dev->port != port) {
   p = &dev->next;
   continue;
  }
  *p = dev->next;
  kfree(dev);
 }




 if (!topology) numdevs = 0;
 spin_unlock(&topology_lock);
 return;
}
