
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxbf_tmfifo_vring {int index; int dma; void* va; int align; int num; int vdev_id; struct mlxbf_tmfifo* fifo; } ;
struct device {int parent; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {struct device dev; TYPE_1__ id; } ;
struct mlxbf_tmfifo_vdev {TYPE_2__ vdev; struct mlxbf_tmfifo_vring* vrings; } ;
struct mlxbf_tmfifo {int dummy; } ;
typedef int dma_addr_t ;


 int ARRAY_SIZE (struct mlxbf_tmfifo_vring*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXBF_TMFIFO_VRING_SIZE ;
 int SMP_CACHE_BYTES ;
 int dev_err (int ,char*) ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 int mlxbf_tmfifo_free_vrings (struct mlxbf_tmfifo*,struct mlxbf_tmfifo_vdev*) ;
 int vring_size (int ,int ) ;

__attribute__((used)) static int mlxbf_tmfifo_alloc_vrings(struct mlxbf_tmfifo *fifo,
         struct mlxbf_tmfifo_vdev *tm_vdev)
{
 struct mlxbf_tmfifo_vring *vring;
 struct device *dev;
 dma_addr_t dma;
 int i, size;
 void *va;

 for (i = 0; i < ARRAY_SIZE(tm_vdev->vrings); i++) {
  vring = &tm_vdev->vrings[i];
  vring->fifo = fifo;
  vring->num = MLXBF_TMFIFO_VRING_SIZE;
  vring->align = SMP_CACHE_BYTES;
  vring->index = i;
  vring->vdev_id = tm_vdev->vdev.id.device;
  dev = &tm_vdev->vdev.dev;

  size = vring_size(vring->num, vring->align);
  va = dma_alloc_coherent(dev->parent, size, &dma, GFP_KERNEL);
  if (!va) {
   mlxbf_tmfifo_free_vrings(fifo, tm_vdev);
   dev_err(dev->parent, "dma_alloc_coherent failed\n");
   return -ENOMEM;
  }

  vring->va = va;
  vring->dma = dma;
 }

 return 0;
}
