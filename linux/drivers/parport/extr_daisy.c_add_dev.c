
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
struct daisydev {int daisy; int devnum; struct daisydev* next; struct parport* port; } ;


 int GFP_KERNEL ;
 struct daisydev* kmalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct daisydev* topology ;
 int topology_lock ;

__attribute__((used)) static void add_dev(int devnum, struct parport *port, int daisy)
{
 struct daisydev *newdev, **p;
 newdev = kmalloc(sizeof(struct daisydev), GFP_KERNEL);
 if (newdev) {
  newdev->port = port;
  newdev->daisy = daisy;
  newdev->devnum = devnum;
  spin_lock(&topology_lock);
  for (p = &topology; *p && (*p)->devnum<devnum; p = &(*p)->next)
   ;
  newdev->next = *p;
  *p = newdev;
  spin_unlock(&topology_lock);
 }
}
