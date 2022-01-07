
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct scm_request {int list; TYPE_1__* aob; scalar_t__* request; } ;
struct msb {int flags; scalar_t__ data_addr; } ;
struct TYPE_2__ {struct msb* msb; } ;


 scalar_t__ IS_ALIGNED (scalar_t__,int ) ;
 int MSB_FLAG_IDA ;
 int PAGE_SIZE ;
 int aidaw_pool ;
 int inactive_requests ;
 int list_add (int *,int *) ;
 int list_lock ;
 int mempool_free (int ,int ) ;
 int nr_requests_per_io ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_to_page (scalar_t__) ;

__attribute__((used)) static void scm_request_done(struct scm_request *scmrq)
{
 unsigned long flags;
 struct msb *msb;
 u64 aidaw;
 int i;

 for (i = 0; i < nr_requests_per_io && scmrq->request[i]; i++) {
  msb = &scmrq->aob->msb[i];
  aidaw = msb->data_addr;

  if ((msb->flags & MSB_FLAG_IDA) && aidaw &&
      IS_ALIGNED(aidaw, PAGE_SIZE))
   mempool_free(virt_to_page(aidaw), aidaw_pool);
 }

 spin_lock_irqsave(&list_lock, flags);
 list_add(&scmrq->list, &inactive_requests);
 spin_unlock_irqrestore(&list_lock, flags);
}
