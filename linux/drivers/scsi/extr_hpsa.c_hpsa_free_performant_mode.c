
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int * blockFetchTable; } ;


 int hpsa_free_ioaccel1_cmd_and_bft (struct ctlr_info*) ;
 int hpsa_free_ioaccel2_cmd_and_bft (struct ctlr_info*) ;
 int hpsa_free_reply_queues (struct ctlr_info*) ;
 int kfree (int *) ;

__attribute__((used)) static void hpsa_free_performant_mode(struct ctlr_info *h)
{
 kfree(h->blockFetchTable);
 h->blockFetchTable = ((void*)0);
 hpsa_free_reply_queues(h);
 hpsa_free_ioaccel1_cmd_and_bft(h);
 hpsa_free_ioaccel2_cmd_and_bft(h);
}
