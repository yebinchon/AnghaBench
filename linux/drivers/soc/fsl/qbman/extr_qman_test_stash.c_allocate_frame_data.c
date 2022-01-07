
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HP_FIRST_WORD ;
 int HP_NUM_WORDS ;
 int * PTR_ALIGN (int ,int) ;
 int __frame_ptr ;
 int dma_map_single (int ,int *,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int do_lfsr (int ) ;
 int frame_dma ;
 int * frame_ptr ;
 int kfree (int ) ;
 int kmalloc (int,int ) ;
 TYPE_1__* pcfg ;
 int pr_crit (char*) ;
 int qman_dma_portal ;
 TYPE_1__* qman_get_qm_portal_config (int ) ;

__attribute__((used)) static int allocate_frame_data(void)
{
 u32 lfsr = HP_FIRST_WORD;
 int loop;

 if (!qman_dma_portal) {
  pr_crit("portal not available\n");
  return -EIO;
 }

 pcfg = qman_get_qm_portal_config(qman_dma_portal);

 __frame_ptr = kmalloc(4 * HP_NUM_WORDS, GFP_KERNEL);
 if (!__frame_ptr)
  return -ENOMEM;

 frame_ptr = PTR_ALIGN(__frame_ptr, 64);
 for (loop = 0; loop < HP_NUM_WORDS; loop++) {
  frame_ptr[loop] = lfsr;
  lfsr = do_lfsr(lfsr);
 }

 frame_dma = dma_map_single(pcfg->dev, frame_ptr, 4 * HP_NUM_WORDS,
       DMA_BIDIRECTIONAL);
 if (dma_mapping_error(pcfg->dev, frame_dma)) {
  pr_crit("dma mapping failure\n");
  kfree(__frame_ptr);
  return -EIO;
 }

 return 0;
}
