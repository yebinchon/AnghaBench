
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_response {int status; } ;
struct pci_create_int_response {int int_desc; } ;
struct TYPE_2__ {int host_event; int completion_status; } ;
struct compose_comp_ctxt {TYPE_1__ comp_pkt; int int_desc; } ;


 int complete (int *) ;

__attribute__((used)) static void hv_pci_compose_compl(void *context, struct pci_response *resp,
     int resp_packet_size)
{
 struct compose_comp_ctxt *comp_pkt = context;
 struct pci_create_int_response *int_resp =
  (struct pci_create_int_response *)resp;

 comp_pkt->comp_pkt.completion_status = resp->status;
 comp_pkt->int_desc = int_resp->int_desc;
 complete(&comp_pkt->comp_pkt.host_event);
}
