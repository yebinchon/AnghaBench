
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct badrange {int lock; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void badrange_init(struct badrange *badrange)
{
 INIT_LIST_HEAD(&badrange->list);
 spin_lock_init(&badrange->lock);
}
