
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct q_res_req_compl {int host_event; TYPE_3__* hpdev; } ;
struct pci_response {int status; } ;
struct pci_q_res_req_response {int * probed_bar; } ;
struct TYPE_6__ {int * probed_bar; TYPE_2__* hbus; } ;
struct TYPE_5__ {TYPE_1__* hdev; } ;
struct TYPE_4__ {int device; } ;


 int complete (int *) ;
 int dev_err (int *,char*,int ) ;

__attribute__((used)) static void q_resource_requirements(void *context, struct pci_response *resp,
        int resp_packet_size)
{
 struct q_res_req_compl *completion = context;
 struct pci_q_res_req_response *q_res_req =
  (struct pci_q_res_req_response *)resp;
 int i;

 if (resp->status < 0) {
  dev_err(&completion->hpdev->hbus->hdev->device,
   "query resource requirements failed: %x\n",
   resp->status);
 } else {
  for (i = 0; i < 6; i++) {
   completion->hpdev->probed_bar[i] =
    q_res_req->probed_bar[i];
  }
 }

 complete(&completion->host_event);
}
