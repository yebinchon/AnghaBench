
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int slot; } ;
struct TYPE_9__ {int type; } ;
struct pci_resources_assigned2 {TYPE_4__ wslot; TYPE_3__ message_type; } ;
struct TYPE_8__ {int slot; } ;
struct TYPE_7__ {int type; } ;
struct pci_resources_assigned {TYPE_2__ wslot; TYPE_1__ message_type; } ;
struct pci_packet {int message; struct hv_pci_compl* compl_ctxt; int completion_func; } ;
struct hv_pcibus_device {int dummy; } ;
struct TYPE_11__ {int slot; } ;
struct TYPE_12__ {TYPE_5__ win_slot; } ;
struct hv_pci_dev {TYPE_6__ desc; } ;
struct hv_pci_compl {scalar_t__ completion_status; int host_event; } ;
struct hv_device {int device; int channel; } ;


 int ENOMEM ;
 int EPROTO ;
 int GFP_KERNEL ;
 scalar_t__ PCI_PROTOCOL_VERSION_1_2 ;
 int PCI_RESOURCES_ASSIGNED ;
 int PCI_RESOURCES_ASSIGNED2 ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 int dev_err (int *,char*,scalar_t__) ;
 struct hv_pci_dev* get_pcichild_wslot (struct hv_pcibus_device*,int) ;
 struct hv_pcibus_device* hv_get_drvdata (struct hv_device*) ;
 int hv_pci_generic_compl ;
 int init_completion (int *) ;
 int kfree (struct pci_packet*) ;
 struct pci_packet* kmalloc (int,int ) ;
 int memset (struct pci_packet*,int ,int) ;
 scalar_t__ pci_protocol_version ;
 int put_pcichild (struct hv_pci_dev*) ;
 int vmbus_sendpacket (int ,int *,size_t,unsigned long,int ,int ) ;
 int wait_for_response (struct hv_device*,int *) ;

__attribute__((used)) static int hv_send_resources_allocated(struct hv_device *hdev)
{
 struct hv_pcibus_device *hbus = hv_get_drvdata(hdev);
 struct pci_resources_assigned *res_assigned;
 struct pci_resources_assigned2 *res_assigned2;
 struct hv_pci_compl comp_pkt;
 struct hv_pci_dev *hpdev;
 struct pci_packet *pkt;
 size_t size_res;
 u32 wslot;
 int ret;

 size_res = (pci_protocol_version < PCI_PROTOCOL_VERSION_1_2)
   ? sizeof(*res_assigned) : sizeof(*res_assigned2);

 pkt = kmalloc(sizeof(*pkt) + size_res, GFP_KERNEL);
 if (!pkt)
  return -ENOMEM;

 ret = 0;

 for (wslot = 0; wslot < 256; wslot++) {
  hpdev = get_pcichild_wslot(hbus, wslot);
  if (!hpdev)
   continue;

  memset(pkt, 0, sizeof(*pkt) + size_res);
  init_completion(&comp_pkt.host_event);
  pkt->completion_func = hv_pci_generic_compl;
  pkt->compl_ctxt = &comp_pkt;

  if (pci_protocol_version < PCI_PROTOCOL_VERSION_1_2) {
   res_assigned =
    (struct pci_resources_assigned *)&pkt->message;
   res_assigned->message_type.type =
    PCI_RESOURCES_ASSIGNED;
   res_assigned->wslot.slot = hpdev->desc.win_slot.slot;
  } else {
   res_assigned2 =
    (struct pci_resources_assigned2 *)&pkt->message;
   res_assigned2->message_type.type =
    PCI_RESOURCES_ASSIGNED2;
   res_assigned2->wslot.slot = hpdev->desc.win_slot.slot;
  }
  put_pcichild(hpdev);

  ret = vmbus_sendpacket(hdev->channel, &pkt->message,
    size_res, (unsigned long)pkt,
    VM_PKT_DATA_INBAND,
    VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
  if (!ret)
   ret = wait_for_response(hdev, &comp_pkt.host_event);
  if (ret)
   break;

  if (comp_pkt.completion_status < 0) {
   ret = -EPROTO;
   dev_err(&hdev->device,
    "resource allocated returned 0x%x",
    comp_pkt.completion_status);
   break;
  }
 }

 kfree(pkt);
 return ret;
}
