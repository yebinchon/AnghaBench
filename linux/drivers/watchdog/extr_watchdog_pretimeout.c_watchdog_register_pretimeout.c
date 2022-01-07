
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_pretimeout {struct watchdog_device* wdd; int entry; } ;
struct watchdog_device {int gov; TYPE_1__* info; } ;
struct TYPE_2__ {int options; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WDIOF_PRETIMEOUT ;
 int default_gov ;
 struct watchdog_pretimeout* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pretimeout_list ;
 int pretimeout_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int watchdog_register_pretimeout(struct watchdog_device *wdd)
{
 struct watchdog_pretimeout *p;

 if (!(wdd->info->options & WDIOF_PRETIMEOUT))
  return 0;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 spin_lock_irq(&pretimeout_lock);
 list_add(&p->entry, &pretimeout_list);
 p->wdd = wdd;
 wdd->gov = default_gov;
 spin_unlock_irq(&pretimeout_lock);

 return 0;
}
