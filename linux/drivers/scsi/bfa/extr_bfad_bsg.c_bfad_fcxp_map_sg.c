
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct bfad_s {TYPE_1__* pcidev; } ;
struct bfad_buf_info {int size; scalar_t__ phys; int virt; } ;
struct bfa_sge_s {int sg_len; void* sg_addr; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 struct bfad_buf_info* kcalloc (int,int,int ) ;
 int kfree (struct bfad_buf_info*) ;
 int memcpy (int ,void*,int) ;

struct bfad_buf_info *
bfad_fcxp_map_sg(struct bfad_s *bfad, void *payload_kbuf,
   uint32_t payload_len, uint32_t *num_sgles)
{
 struct bfad_buf_info *buf_base, *buf_info;
 struct bfa_sge_s *sg_table;
 int sge_num = 1;

 buf_base = kcalloc(sizeof(struct bfad_buf_info) +
    sizeof(struct bfa_sge_s),
      sge_num, GFP_KERNEL);
 if (!buf_base)
  return ((void*)0);

 sg_table = (struct bfa_sge_s *) (((uint8_t *)buf_base) +
   (sizeof(struct bfad_buf_info) * sge_num));


 buf_info = buf_base;
 buf_info->size = payload_len;
 buf_info->virt = dma_alloc_coherent(&bfad->pcidev->dev,
         buf_info->size, &buf_info->phys,
         GFP_KERNEL);
 if (!buf_info->virt)
  goto out_free_mem;


 memcpy(buf_info->virt, payload_kbuf, buf_info->size);




 sg_table->sg_len = buf_info->size;
 sg_table->sg_addr = (void *)(size_t) buf_info->phys;

 *num_sgles = sge_num;

 return buf_base;

out_free_mem:
 kfree(buf_base);
 return ((void*)0);
}
