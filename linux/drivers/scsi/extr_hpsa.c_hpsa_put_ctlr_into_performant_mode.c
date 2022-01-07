
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ctlr_info {int nreply_queues; scalar_t__ msix_vectors; int reply_queue_size; int max_commands; int * blockFetchTable; TYPE_3__* reply_queue; TYPE_2__* pdev; TYPE_1__* cfgtable; } ;
struct TYPE_6__ {int size; int wraparound; scalar_t__ current_entry; int head; int busaddr; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int TransportSupport; } ;


 unsigned long CFGTBL_Trans_Performant ;
 int CFGTBL_Trans_enable_directed_msix ;
 int CFGTBL_Trans_io_accel1 ;
 int CFGTBL_Trans_io_accel2 ;
 unsigned long CFGTBL_Trans_use_short_tags ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PERFORMANT_MODE ;
 int SG_ENTRIES_IN_CMD ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int hpsa_alloc_ioaccel1_cmd_and_bft (struct ctlr_info*) ;
 int hpsa_alloc_ioaccel2_cmd_and_bft (struct ctlr_info*) ;
 int hpsa_enter_performant_mode (struct ctlr_info*,int) ;
 int hpsa_free_ioaccel1_cmd_and_bft (struct ctlr_info*) ;
 int hpsa_free_ioaccel2_cmd_and_bft (struct ctlr_info*) ;
 int hpsa_free_reply_queues (struct ctlr_info*) ;
 int hpsa_get_max_perf_mode_cmds (struct ctlr_info*) ;
 scalar_t__ hpsa_simple_mode ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int readl (int *) ;

__attribute__((used)) static int hpsa_put_ctlr_into_performant_mode(struct ctlr_info *h)
{
 u32 trans_support;
 unsigned long transMethod = CFGTBL_Trans_Performant |
     CFGTBL_Trans_use_short_tags;
 int i, rc;

 if (hpsa_simple_mode)
  return 0;

 trans_support = readl(&(h->cfgtable->TransportSupport));
 if (!(trans_support & PERFORMANT_MODE))
  return 0;


 if (trans_support & CFGTBL_Trans_io_accel1) {
  transMethod |= CFGTBL_Trans_io_accel1 |
    CFGTBL_Trans_enable_directed_msix;
  rc = hpsa_alloc_ioaccel1_cmd_and_bft(h);
  if (rc)
   return rc;
 } else if (trans_support & CFGTBL_Trans_io_accel2) {
  transMethod |= CFGTBL_Trans_io_accel2 |
    CFGTBL_Trans_enable_directed_msix;
  rc = hpsa_alloc_ioaccel2_cmd_and_bft(h);
  if (rc)
   return rc;
 }

 h->nreply_queues = h->msix_vectors > 0 ? h->msix_vectors : 1;
 hpsa_get_max_perf_mode_cmds(h);

 h->reply_queue_size = h->max_commands * sizeof(u64);

 for (i = 0; i < h->nreply_queues; i++) {
  h->reply_queue[i].head = dma_alloc_coherent(&h->pdev->dev,
      h->reply_queue_size,
      &h->reply_queue[i].busaddr,
      GFP_KERNEL);
  if (!h->reply_queue[i].head) {
   rc = -ENOMEM;
   goto clean1;
  }
  h->reply_queue[i].size = h->max_commands;
  h->reply_queue[i].wraparound = 1;
  h->reply_queue[i].current_entry = 0;
 }


 h->blockFetchTable = kmalloc(((SG_ENTRIES_IN_CMD + 1) *
    sizeof(u32)), GFP_KERNEL);
 if (!h->blockFetchTable) {
  rc = -ENOMEM;
  goto clean1;
 }

 rc = hpsa_enter_performant_mode(h, trans_support);
 if (rc)
  goto clean2;
 return 0;

clean2:
 kfree(h->blockFetchTable);
 h->blockFetchTable = ((void*)0);
clean1:
 hpsa_free_reply_queues(h);
 hpsa_free_ioaccel1_cmd_and_bft(h);
 hpsa_free_ioaccel2_cmd_and_bft(h);
 return rc;
}
