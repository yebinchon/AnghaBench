
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int * otherend; } ;


 int kfree (int *) ;

__attribute__((used)) static void free_otherend_details(struct xenbus_device *dev)
{
 kfree(dev->otherend);
 dev->otherend = ((void*)0);
}
