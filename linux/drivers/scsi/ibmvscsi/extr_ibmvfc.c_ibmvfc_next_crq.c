
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_crq_queue {size_t cur; size_t size; struct ibmvfc_crq* msgs; } ;
struct ibmvfc_host {struct ibmvfc_crq_queue crq; } ;
struct ibmvfc_crq {int valid; } ;


 int rmb () ;

__attribute__((used)) static struct ibmvfc_crq *ibmvfc_next_crq(struct ibmvfc_host *vhost)
{
 struct ibmvfc_crq_queue *queue = &vhost->crq;
 struct ibmvfc_crq *crq;

 crq = &queue->msgs[queue->cur];
 if (crq->valid & 0x80) {
  if (++queue->cur == queue->size)
   queue->cur = 0;
  rmb();
 } else
  crq = ((void*)0);

 return crq;
}
