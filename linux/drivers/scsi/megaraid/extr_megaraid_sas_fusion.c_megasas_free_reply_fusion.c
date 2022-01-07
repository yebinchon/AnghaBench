
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {struct fusion_context* ctrl_context; } ;
struct fusion_context {int reply_frames_desc_pool; int * reply_frames_desc_phys; scalar_t__* reply_frames_desc; } ;


 int dma_pool_destroy (int ) ;
 int dma_pool_free (int ,scalar_t__,int ) ;

__attribute__((used)) static void
megasas_free_reply_fusion(struct megasas_instance *instance) {

 struct fusion_context *fusion;

 fusion = instance->ctrl_context;

 if (fusion->reply_frames_desc[0])
  dma_pool_free(fusion->reply_frames_desc_pool,
   fusion->reply_frames_desc[0],
   fusion->reply_frames_desc_phys[0]);

 dma_pool_destroy(fusion->reply_frames_desc_pool);

}
