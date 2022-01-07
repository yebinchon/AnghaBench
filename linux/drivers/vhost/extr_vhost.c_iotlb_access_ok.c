
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vhost_virtqueue {struct vhost_umem* iotlb; } ;
struct vhost_umem_node {scalar_t__ start; int perm; scalar_t__ size; } ;
struct vhost_umem {int umem_tree; } ;


 int vhost_iotlb_miss (struct vhost_virtqueue*,scalar_t__,int) ;
 struct vhost_umem_node* vhost_umem_interval_tree_iter_first (int *,scalar_t__,scalar_t__) ;
 scalar_t__ vhost_vq_meta_fetch (struct vhost_virtqueue*,scalar_t__,scalar_t__,int) ;
 int vhost_vq_meta_update (struct vhost_virtqueue*,struct vhost_umem_node const*,int) ;

__attribute__((used)) static bool iotlb_access_ok(struct vhost_virtqueue *vq,
       int access, u64 addr, u64 len, int type)
{
 const struct vhost_umem_node *node;
 struct vhost_umem *umem = vq->iotlb;
 u64 s = 0, size, orig_addr = addr, last = addr + len - 1;

 if (vhost_vq_meta_fetch(vq, addr, len, type))
  return 1;

 while (len > s) {
  node = vhost_umem_interval_tree_iter_first(&umem->umem_tree,
          addr,
          last);
  if (node == ((void*)0) || node->start > addr) {
   vhost_iotlb_miss(vq, addr, access);
   return 0;
  } else if (!(node->perm & access)) {



   return 0;
  }

  size = node->size - addr + node->start;

  if (orig_addr == addr && size >= len)
   vhost_vq_meta_update(vq, node, type);

  s += size;
  addr += size;
 }

 return 1;
}
