
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_mcc_wrb {int dummy; } ;
struct be_mcc_mailbox {struct be_mcc_wrb wrb; } ;
struct be_dma_mem {scalar_t__ va; } ;



struct be_mcc_wrb *wrb_from_mbox(struct be_dma_mem *mbox_mem)
{
 return &((struct be_mcc_mailbox *)(mbox_mem->va))->wrb;
}
