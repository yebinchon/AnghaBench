
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_message {int type; } ;
struct hv_pcibus_device {int survey_event; } ;
struct hv_device {int channel; } ;
struct completion {int dummy; } ;
typedef int message ;


 int ENOTEMPTY ;
 int PCI_QUERY_BUS_RELATIONS ;
 int VM_PKT_DATA_INBAND ;
 scalar_t__ cmpxchg (int *,int *,struct completion*) ;
 struct hv_pcibus_device* hv_get_drvdata (struct hv_device*) ;
 int init_completion (struct completion*) ;
 int memset (struct pci_message*,int ,int) ;
 int vmbus_sendpacket (int ,struct pci_message*,int,int ,int ,int ) ;
 int wait_for_response (struct hv_device*,struct completion*) ;

__attribute__((used)) static int hv_pci_query_relations(struct hv_device *hdev)
{
 struct hv_pcibus_device *hbus = hv_get_drvdata(hdev);
 struct pci_message message;
 struct completion comp;
 int ret;


 init_completion(&comp);
 if (cmpxchg(&hbus->survey_event, ((void*)0), &comp))
  return -ENOTEMPTY;

 memset(&message, 0, sizeof(message));
 message.type = PCI_QUERY_BUS_RELATIONS;

 ret = vmbus_sendpacket(hdev->channel, &message, sizeof(message),
          0, VM_PKT_DATA_INBAND, 0);
 if (!ret)
  ret = wait_for_response(hdev, &comp);

 return ret;
}
