
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __of_free_phandle_cache () ;
 int devtree_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int of_free_phandle_cache(void)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&devtree_lock, flags);

 __of_free_phandle_cache();

 raw_spin_unlock_irqrestore(&devtree_lock, flags);

 return 0;
}
