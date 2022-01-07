
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * node; } ;
struct xenbus_device {TYPE_1__ otherend_watch; } ;


 int kfree (int *) ;
 int unregister_xenbus_watch (TYPE_1__*) ;

__attribute__((used)) static void free_otherend_watch(struct xenbus_device *dev)
{
 if (dev->otherend_watch.node) {
  unregister_xenbus_watch(&dev->otherend_watch);
  kfree(dev->otherend_watch.node);
  dev->otherend_watch.node = ((void*)0);
 }
}
