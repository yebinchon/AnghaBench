
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxbf_tmfifo_vring {int * vq; int * va; int dma; int align; int num; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct mlxbf_tmfifo_vdev {TYPE_2__ vdev; struct mlxbf_tmfifo_vring* vrings; } ;
struct mlxbf_tmfifo {int dummy; } ;


 int ARRAY_SIZE (struct mlxbf_tmfifo_vring*) ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int vring_del_virtqueue (int *) ;
 int vring_size (int ,int ) ;

__attribute__((used)) static void mlxbf_tmfifo_free_vrings(struct mlxbf_tmfifo *fifo,
         struct mlxbf_tmfifo_vdev *tm_vdev)
{
 struct mlxbf_tmfifo_vring *vring;
 int i, size;

 for (i = 0; i < ARRAY_SIZE(tm_vdev->vrings); i++) {
  vring = &tm_vdev->vrings[i];
  if (vring->va) {
   size = vring_size(vring->num, vring->align);
   dma_free_coherent(tm_vdev->vdev.dev.parent, size,
       vring->va, vring->dma);
   vring->va = ((void*)0);
   if (vring->vq) {
    vring_del_virtqueue(vring->vq);
    vring->vq = ((void*)0);
   }
  }
 }
}
