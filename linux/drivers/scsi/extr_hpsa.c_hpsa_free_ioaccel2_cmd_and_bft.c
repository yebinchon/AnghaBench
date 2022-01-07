
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int nr_cmds; int * ioaccel2_blockFetchTable; scalar_t__ ioaccel2_cmd_pool_dhandle; int * ioaccel2_cmd_pool; int pdev; } ;


 int hpsa_free_ioaccel2_sg_chain_blocks (struct ctlr_info*) ;
 int kfree (int *) ;
 int pci_free_consistent (int ,int,int *,scalar_t__) ;

__attribute__((used)) static void hpsa_free_ioaccel2_cmd_and_bft(struct ctlr_info *h)
{
 hpsa_free_ioaccel2_sg_chain_blocks(h);

 if (h->ioaccel2_cmd_pool) {
  pci_free_consistent(h->pdev,
   h->nr_cmds * sizeof(*h->ioaccel2_cmd_pool),
   h->ioaccel2_cmd_pool,
   h->ioaccel2_cmd_pool_dhandle);
  h->ioaccel2_cmd_pool = ((void*)0);
  h->ioaccel2_cmd_pool_dhandle = 0;
 }
 kfree(h->ioaccel2_blockFetchTable);
 h->ioaccel2_blockFetchTable = ((void*)0);
}
