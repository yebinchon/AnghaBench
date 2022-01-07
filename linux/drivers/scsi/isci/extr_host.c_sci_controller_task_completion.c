
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct isci_request {scalar_t__ io_tag; int flags; } ;
struct isci_host {scalar_t__* io_request_sequence; struct isci_request** reqs; } ;


 int IREQ_ACTIVE ;
 scalar_t__ ISCI_TAG_SEQ (scalar_t__) ;
 scalar_t__ SCI_CONTROLLER_INVALID_IO_TAG ;
 size_t SCU_GET_COMPLETION_INDEX (size_t) ;
 int sci_io_request_tc_completion (struct isci_request*,size_t) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sci_controller_task_completion(struct isci_host *ihost, u32 ent)
{
 u32 index = SCU_GET_COMPLETION_INDEX(ent);
 struct isci_request *ireq = ihost->reqs[index];


 if (test_bit(IREQ_ACTIVE, &ireq->flags) &&
     ireq->io_tag != SCI_CONTROLLER_INVALID_IO_TAG &&
     ISCI_TAG_SEQ(ireq->io_tag) == ihost->io_request_sequence[index])



  sci_io_request_tc_completion(ireq, ent);
}
