
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_response {int status; } ;
struct hv_pci_compl {int host_event; int completion_status; } ;


 int complete (int *) ;

__attribute__((used)) static void hv_pci_write_config_compl(void *context, struct pci_response *resp,
          int resp_packet_size)
{
 struct hv_pci_compl *comp_pkt = context;

 comp_pkt->completion_status = resp->status;
 complete(&comp_pkt->host_event);
}
