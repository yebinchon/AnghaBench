
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {scalar_t__ data_dir; int total_xfer_len; } ;
struct isci_request {int sm; int protocol; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 scalar_t__ DMA_NONE ;
 int SAS_PROTOCOL_STP ;
 int SCI_REQ_CONSTRUCTED ;
 int SCI_SUCCESS ;
 struct sas_task* isci_request_access_task (struct isci_request*) ;
 int sci_change_state (int *,int ) ;
 int sci_io_request_construct_sata (struct isci_request*,int ,scalar_t__,int) ;

__attribute__((used)) static enum sci_status sci_io_request_construct_basic_sata(struct isci_request *ireq)
{
 enum sci_status status;
 bool copy = 0;
 struct sas_task *task = isci_request_access_task(ireq);

 ireq->protocol = SAS_PROTOCOL_STP;

 copy = (task->data_dir == DMA_NONE) ? 0 : 1;

 status = sci_io_request_construct_sata(ireq,
      task->total_xfer_len,
      task->data_dir,
      copy);

 if (status == SCI_SUCCESS)
  sci_change_state(&ireq->sm, SCI_REQ_CONSTRUCTED);

 return status;
}
