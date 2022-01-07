
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sas_task {struct isci_request* lldd_task; } ;
struct TYPE_2__ {struct sas_task* io_task_ptr; } ;
struct isci_request {int flags; TYPE_1__ ttype_ptr; } ;
struct isci_host {int dummy; } ;


 int IREQ_TMF ;
 int clear_bit (int ,int *) ;
 struct isci_request* isci_request_from_tag (struct isci_host*,int ) ;

__attribute__((used)) static struct isci_request *isci_io_request_from_tag(struct isci_host *ihost,
           struct sas_task *task,
           u16 tag)
{
 struct isci_request *ireq;

 ireq = isci_request_from_tag(ihost, tag);
 ireq->ttype_ptr.io_task_ptr = task;
 clear_bit(IREQ_TMF, &ireq->flags);
 task->lldd_task = ireq;

 return ireq;
}
