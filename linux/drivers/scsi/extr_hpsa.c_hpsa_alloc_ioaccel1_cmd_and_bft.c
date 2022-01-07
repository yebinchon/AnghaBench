
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct io_accel1_cmd {int dummy; } ;
struct ctlr_info {int ioaccel_maxsg; int nr_cmds; int * ioaccel_cmd_pool; int * ioaccel1_blockFetchTable; int ioaccel_cmd_pool_dhandle; TYPE_2__* pdev; TYPE_1__* cfgtable; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int io_accel_max_embedded_sg_count; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOACCEL1_COMMANDLIST_ALIGNMENT ;
 int IOACCEL1_MAXSGENTRIES ;
 int * dma_alloc_coherent (int *,int,int *,int ) ;
 int hpsa_free_ioaccel1_cmd_and_bft (struct ctlr_info*) ;
 int * kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int readl (int *) ;

__attribute__((used)) static int hpsa_alloc_ioaccel1_cmd_and_bft(struct ctlr_info *h)
{
 h->ioaccel_maxsg =
  readl(&(h->cfgtable->io_accel_max_embedded_sg_count));
 if (h->ioaccel_maxsg > IOACCEL1_MAXSGENTRIES)
  h->ioaccel_maxsg = IOACCEL1_MAXSGENTRIES;





 BUILD_BUG_ON(sizeof(struct io_accel1_cmd) %
   IOACCEL1_COMMANDLIST_ALIGNMENT);
 h->ioaccel_cmd_pool =
  dma_alloc_coherent(&h->pdev->dev,
   h->nr_cmds * sizeof(*h->ioaccel_cmd_pool),
   &h->ioaccel_cmd_pool_dhandle, GFP_KERNEL);

 h->ioaccel1_blockFetchTable =
  kmalloc(((h->ioaccel_maxsg + 1) *
    sizeof(u32)), GFP_KERNEL);

 if ((h->ioaccel_cmd_pool == ((void*)0)) ||
  (h->ioaccel1_blockFetchTable == ((void*)0)))
  goto clean_up;

 memset(h->ioaccel_cmd_pool, 0,
  h->nr_cmds * sizeof(*h->ioaccel_cmd_pool));
 return 0;

clean_up:
 hpsa_free_ioaccel1_cmd_and_bft(h);
 return -ENOMEM;
}
