
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int dummy; } ;


 int MICROREAD_EVT_MREAD_DISCOVERY_STOP ;
 int MICROREAD_GATE_ID_P2P_INITIATOR ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,int ) ;

__attribute__((used)) static int microread_dep_link_down(struct nfc_hci_dev *hdev)
{
 return nfc_hci_send_event(hdev, MICROREAD_GATE_ID_P2P_INITIATOR,
      MICROREAD_EVT_MREAD_DISCOVERY_STOP, ((void*)0), 0);
}
