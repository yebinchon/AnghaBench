
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rsp; } ;
struct isci_request {TYPE_1__ stp; struct isci_host* owning_controller; } ;
struct isci_host {int uf_control; } ;
struct dev_to_host_fis {scalar_t__ fis_type; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 scalar_t__ FIS_REGD2H ;
 int SCI_SUCCESS ;
 int sci_controller_copy_sata_response (int *,struct dev_to_host_fis*,int *) ;
 int sci_controller_release_frame (struct isci_host*,int ) ;
 int sci_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 int sci_unsolicited_frame_control_get_header (int *,int ,void**) ;

__attribute__((used)) static enum sci_status sci_stp_request_udma_general_frame_handler(struct isci_request *ireq,
               u32 frame_index)
{
 struct isci_host *ihost = ireq->owning_controller;
 struct dev_to_host_fis *frame_header;
 enum sci_status status;
 u32 *frame_buffer;

 status = sci_unsolicited_frame_control_get_header(&ihost->uf_control,
              frame_index,
              (void **)&frame_header);

 if ((status == SCI_SUCCESS) &&
     (frame_header->fis_type == FIS_REGD2H)) {
  sci_unsolicited_frame_control_get_buffer(&ihost->uf_control,
             frame_index,
             (void **)&frame_buffer);

  sci_controller_copy_sata_response(&ireq->stp.rsp,
             frame_header,
             frame_buffer);
 }

 sci_controller_release_frame(ihost, frame_index);

 return status;
}
