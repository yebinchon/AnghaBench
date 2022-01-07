
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gadget_info {int lock; } ;
struct config_item {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gadget_info* to_gadget_info (struct config_item*) ;
 int unregister_gadget (struct gadget_info*) ;

void unregister_gadget_item(struct config_item *item)
{
 struct gadget_info *gi = to_gadget_info(item);

 mutex_lock(&gi->lock);
 unregister_gadget(gi);
 mutex_unlock(&gi->lock);
}
