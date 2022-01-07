
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {struct list_head* next; } ;
struct rio_dev {scalar_t__ comp_tag; TYPE_1__ global_list; } ;
struct list_head {struct list_head* next; } ;


 struct rio_dev* rio_dev_g (struct list_head*) ;
 struct list_head rio_devices ;
 int rio_global_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct rio_dev *rio_get_comptag(u32 comp_tag, struct rio_dev *from)
{
 struct list_head *n;
 struct rio_dev *rdev;

 spin_lock(&rio_global_list_lock);
 n = from ? from->global_list.next : rio_devices.next;

 while (n && (n != &rio_devices)) {
  rdev = rio_dev_g(n);
  if (rdev->comp_tag == comp_tag)
   goto exit;
  n = n->next;
 }
 rdev = ((void*)0);
exit:
 spin_unlock(&rio_global_list_lock);
 return rdev;
}
