
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct nci_dev {TYPE_2__* hci_dev; } ;
struct TYPE_4__ {TYPE_1__* pipes; } ;
struct TYPE_3__ {size_t gate; size_t host; } ;





 int st_nci_hci_admin_event_received (struct nci_dev*,size_t,struct sk_buff*) ;
 int st_nci_hci_apdu_reader_event_received (struct nci_dev*,size_t,struct sk_buff*) ;
 int st_nci_hci_connectivity_event_received (struct nci_dev*,size_t,size_t,struct sk_buff*) ;

void st_nci_hci_event_received(struct nci_dev *ndev, u8 pipe,
     u8 event, struct sk_buff *skb)
{
 u8 gate = ndev->hci_dev->pipes[pipe].gate;
 u8 host = ndev->hci_dev->pipes[pipe].host;

 switch (gate) {
 case 130:
  st_nci_hci_admin_event_received(ndev, event, skb);
 break;
 case 129:
  st_nci_hci_apdu_reader_event_received(ndev, event, skb);
 break;
 case 128:
  st_nci_hci_connectivity_event_received(ndev, host, event, skb);
 break;
 }
}
