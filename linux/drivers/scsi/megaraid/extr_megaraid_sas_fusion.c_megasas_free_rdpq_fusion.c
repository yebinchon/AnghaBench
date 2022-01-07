
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct megasas_instance {TYPE_2__* pdev; struct fusion_context* ctrl_context; } ;
struct fusion_context {int rdpq_phys; scalar_t__ rdpq_virt; int reply_frames_desc_pool_align; int reply_frames_desc_pool; TYPE_1__* rdpq_tracker; } ;
struct MPI2_IOC_INIT_RDPQ_ARRAY_ENTRY {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int pool_entry_phys; scalar_t__ pool_entry_virt; int dma_pool_ptr; } ;


 int MAX_MSIX_QUEUES_FUSION ;
 int RDPQ_MAX_CHUNK_COUNT ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int dma_pool_destroy (int ) ;
 int dma_pool_free (int ,scalar_t__,int ) ;

__attribute__((used)) static void
megasas_free_rdpq_fusion(struct megasas_instance *instance) {

 int i;
 struct fusion_context *fusion;

 fusion = instance->ctrl_context;

 for (i = 0; i < RDPQ_MAX_CHUNK_COUNT; i++) {
  if (fusion->rdpq_tracker[i].pool_entry_virt)
   dma_pool_free(fusion->rdpq_tracker[i].dma_pool_ptr,
          fusion->rdpq_tracker[i].pool_entry_virt,
          fusion->rdpq_tracker[i].pool_entry_phys);

 }

 dma_pool_destroy(fusion->reply_frames_desc_pool);
 dma_pool_destroy(fusion->reply_frames_desc_pool_align);

 if (fusion->rdpq_virt)
  dma_free_coherent(&instance->pdev->dev,
   sizeof(struct MPI2_IOC_INIT_RDPQ_ARRAY_ENTRY) * MAX_MSIX_QUEUES_FUSION,
   fusion->rdpq_virt, fusion->rdpq_phys);
}
