
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int rpipe_mutex; int rpipe_lock; int rpipe_delayed_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void wa_rpipe_init(struct wahc *wa)
{
 INIT_LIST_HEAD(&wa->rpipe_delayed_list);
 spin_lock_init(&wa->rpipe_lock);
 mutex_init(&wa->rpipe_mutex);
}
