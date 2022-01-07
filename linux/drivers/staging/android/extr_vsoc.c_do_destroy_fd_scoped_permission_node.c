
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsoc_device_region {int dummy; } ;
struct fd_scoped_permission_node {int list; int permission; } ;
struct TYPE_2__ {int mtx; } ;


 int do_destroy_fd_scoped_permission (struct vsoc_device_region*,int *) ;
 int kfree (struct fd_scoped_permission_node*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ vsoc_dev ;

__attribute__((used)) static void
do_destroy_fd_scoped_permission_node(struct vsoc_device_region *owner_region_p,
         struct fd_scoped_permission_node *node)
{
 if (node) {
  do_destroy_fd_scoped_permission(owner_region_p,
      &node->permission);
  mutex_lock(&vsoc_dev.mtx);
  list_del(&node->list);
  mutex_unlock(&vsoc_dev.mtx);
  kfree(node);
 }
}
