
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_info {int list; int vtermno; int irq; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HVC_COOKIE ;
 int VIRQ_CONSOLE ;
 int bind_virq_to_irq (int ,int ,int) ;
 struct xencons_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct xencons_info* vtermno_to_xencons (int ) ;
 int xen_initial_domain () ;
 int xencons_lock ;
 int xenconsoles ;

__attribute__((used)) static int xen_initial_domain_console_init(void)
{
 struct xencons_info *info;

 if (!xen_initial_domain())
  return -ENODEV;

 info = vtermno_to_xencons(HVC_COOKIE);
 if (!info) {
  info = kzalloc(sizeof(struct xencons_info), GFP_KERNEL);
  if (!info)
   return -ENOMEM;
 }

 info->irq = bind_virq_to_irq(VIRQ_CONSOLE, 0, 0);
 info->vtermno = HVC_COOKIE;

 spin_lock(&xencons_lock);
 list_add_tail(&info->list, &xenconsoles);
 spin_unlock(&xencons_lock);

 return 0;
}
