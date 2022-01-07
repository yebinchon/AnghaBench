
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;


 int st21nfca_tm_send_dep_res (struct nfc_hci_dev*,struct sk_buff*) ;

__attribute__((used)) static int st21nfca_hci_tm_send(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
 return st21nfca_tm_send_dep_res(hdev, skb);
}
