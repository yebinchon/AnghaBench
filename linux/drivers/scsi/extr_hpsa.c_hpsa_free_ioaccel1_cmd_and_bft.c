
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int nr_cmds; int * ioaccel1_blockFetchTable; scalar_t__ ioaccel_cmd_pool_dhandle; int * ioaccel_cmd_pool; int pdev; } ;


 int kfree (int *) ;
 int pci_free_consistent (int ,int,int *,scalar_t__) ;

__attribute__((used)) static void hpsa_free_ioaccel1_cmd_and_bft(struct ctlr_info *h)
{
 if (h->ioaccel_cmd_pool) {
  pci_free_consistent(h->pdev,
   h->nr_cmds * sizeof(*h->ioaccel_cmd_pool),
   h->ioaccel_cmd_pool,
   h->ioaccel_cmd_pool_dhandle);
  h->ioaccel_cmd_pool = ((void*)0);
  h->ioaccel_cmd_pool_dhandle = 0;
 }
 kfree(h->ioaccel1_blockFetchTable);
 h->ioaccel1_blockFetchTable = ((void*)0);
}
