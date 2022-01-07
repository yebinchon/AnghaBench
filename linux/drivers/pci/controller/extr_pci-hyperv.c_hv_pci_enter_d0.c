
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_packet {int message; struct hv_pci_compl* compl_ctxt; int completion_func; } ;
struct TYPE_3__ {int type; } ;
struct pci_bus_d0_entry {int mmio_base; TYPE_1__ message_type; } ;
struct hv_pcibus_device {TYPE_2__* mem_config; } ;
struct hv_pci_compl {scalar_t__ completion_status; int host_event; } ;
struct hv_device {int device; int channel; } ;
struct TYPE_4__ {int start; } ;


 int ENOMEM ;
 int EPROTO ;
 int GFP_KERNEL ;
 int PCI_BUS_D0ENTRY ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 int dev_err (int *,char*,scalar_t__) ;
 struct hv_pcibus_device* hv_get_drvdata (struct hv_device*) ;
 int hv_pci_generic_compl ;
 int init_completion (int *) ;
 int kfree (struct pci_packet*) ;
 struct pci_packet* kzalloc (int,int ) ;
 int vmbus_sendpacket (int ,struct pci_bus_d0_entry*,int,unsigned long,int ,int ) ;
 int wait_for_response (struct hv_device*,int *) ;

__attribute__((used)) static int hv_pci_enter_d0(struct hv_device *hdev)
{
 struct hv_pcibus_device *hbus = hv_get_drvdata(hdev);
 struct pci_bus_d0_entry *d0_entry;
 struct hv_pci_compl comp_pkt;
 struct pci_packet *pkt;
 int ret;







 pkt = kzalloc(sizeof(*pkt) + sizeof(*d0_entry), GFP_KERNEL);
 if (!pkt)
  return -ENOMEM;

 init_completion(&comp_pkt.host_event);
 pkt->completion_func = hv_pci_generic_compl;
 pkt->compl_ctxt = &comp_pkt;
 d0_entry = (struct pci_bus_d0_entry *)&pkt->message;
 d0_entry->message_type.type = PCI_BUS_D0ENTRY;
 d0_entry->mmio_base = hbus->mem_config->start;

 ret = vmbus_sendpacket(hdev->channel, d0_entry, sizeof(*d0_entry),
          (unsigned long)pkt, VM_PKT_DATA_INBAND,
          VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
 if (!ret)
  ret = wait_for_response(hdev, &comp_pkt.host_event);

 if (ret)
  goto exit;

 if (comp_pkt.completion_status < 0) {
  dev_err(&hdev->device,
   "PCI Pass-through VSP failed D0 Entry with status %x\n",
   comp_pkt.completion_status);
  ret = -EPROTO;
  goto exit;
 }

 ret = 0;

exit:
 kfree(pkt);
 return ret;
}
