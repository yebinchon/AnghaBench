
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_umem_node {int link; } ;
struct vhost_umem {int numem; int umem_tree; } ;


 int kfree (struct vhost_umem_node*) ;
 int list_del (int *) ;
 int vhost_umem_interval_tree_remove (struct vhost_umem_node*,int *) ;

__attribute__((used)) static void vhost_umem_free(struct vhost_umem *umem,
       struct vhost_umem_node *node)
{
 vhost_umem_interval_tree_remove(node, &umem->umem_tree);
 list_del(&node->link);
 kfree(node);
 umem->numem--;
}
