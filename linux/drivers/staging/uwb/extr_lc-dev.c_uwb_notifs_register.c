
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int list; } ;
struct uwb_rc {TYPE_1__ notifs_chain; } ;
struct uwb_notifs_handler {int list_node; } ;


 int ERESTARTSYS ;
 int list_add (int *,int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int uwb_notifs_register(struct uwb_rc *rc, struct uwb_notifs_handler *new)
{
 if (mutex_lock_interruptible(&rc->notifs_chain.mutex))
  return -ERESTARTSYS;
 list_add(&new->list_node, &rc->notifs_chain.list);
 mutex_unlock(&rc->notifs_chain.mutex);
 return 0;
}
