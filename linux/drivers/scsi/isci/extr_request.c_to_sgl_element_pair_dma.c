
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isci_request {int * sg_table; TYPE_1__* tc; } ;
struct isci_host {scalar_t__ tc_dma; int * task_context_table; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int sgl_pair_cd; int sgl_pair_ab; } ;


 scalar_t__ sci_io_request_get_dma_addr (struct isci_request*,int *) ;

__attribute__((used)) static dma_addr_t to_sgl_element_pair_dma(struct isci_host *ihost,
       struct isci_request *ireq, u32 idx)
{
 u32 offset;

 if (idx == 0) {
  offset = (void *) &ireq->tc->sgl_pair_ab -
    (void *) &ihost->task_context_table[0];
  return ihost->tc_dma + offset;
 } else if (idx == 1) {
  offset = (void *) &ireq->tc->sgl_pair_cd -
    (void *) &ihost->task_context_table[0];
  return ihost->tc_dma + offset;
 }

 return sci_io_request_get_dma_addr(ireq, &ireq->sg_table[idx - 2]);
}
