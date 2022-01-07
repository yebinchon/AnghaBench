
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bfad_s {TYPE_1__* pcidev; } ;
struct bfad_buf_info {int phys; int * virt; int size; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (struct bfad_buf_info*) ;

void
bfad_fcxp_free_mem(struct bfad_s *bfad, struct bfad_buf_info *buf_base,
     uint32_t num_sgles)
{
 int i;
 struct bfad_buf_info *buf_info = buf_base;

 if (buf_base) {
  for (i = 0; i < num_sgles; buf_info++, i++) {
   if (buf_info->virt != ((void*)0))
    dma_free_coherent(&bfad->pcidev->dev,
     buf_info->size, buf_info->virt,
     buf_info->phys);
  }
  kfree(buf_base);
 }
}
