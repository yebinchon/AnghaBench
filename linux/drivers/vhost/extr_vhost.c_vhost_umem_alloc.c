
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_umem {int umem_list; scalar_t__ numem; int umem_tree; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT_CACHED ;
 struct vhost_umem* kvzalloc (int,int ) ;

__attribute__((used)) static struct vhost_umem *vhost_umem_alloc(void)
{
 struct vhost_umem *umem = kvzalloc(sizeof(*umem), GFP_KERNEL);

 if (!umem)
  return ((void*)0);

 umem->umem_tree = RB_ROOT_CACHED;
 umem->numem = 0;
 INIT_LIST_HEAD(&umem->umem_list);

 return umem;
}
