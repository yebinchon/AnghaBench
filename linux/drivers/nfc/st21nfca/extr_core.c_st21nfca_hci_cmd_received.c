
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {int se_active; int req_completion; int count_pipes; int se_active_timer; int expected_pipes; } ;
struct st21nfca_hci_info {TYPE_2__ se_info; } ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {TYPE_1__* pipes; } ;
struct TYPE_3__ {size_t gate; int dest_host; } ;



 int NFC_HCI_UICC_HOST_ID ;
 size_t ST21NFCA_APDU_READER_GATE ;
 int complete (int *) ;
 int del_timer_sync (int *) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int pr_debug (char*,size_t) ;

__attribute__((used)) static void st21nfca_hci_cmd_received(struct nfc_hci_dev *hdev, u8 pipe, u8 cmd,
    struct sk_buff *skb)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);
 u8 gate = hdev->pipes[pipe].gate;

 pr_debug("cmd: %x\n", cmd);

 switch (cmd) {
 case 128:
  if (gate != ST21NFCA_APDU_READER_GATE &&
   hdev->pipes[pipe].dest_host != NFC_HCI_UICC_HOST_ID)
   info->se_info.count_pipes++;

  if (info->se_info.count_pipes == info->se_info.expected_pipes) {
   del_timer_sync(&info->se_info.se_active_timer);
   info->se_info.se_active = 0;
   info->se_info.count_pipes = 0;
   complete(&info->se_info.req_completion);
  }
 break;
 }
}
