
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_mei_phy {int send_wq; int recv_req_id; int cldev; } ;
struct mei_nfc_hdr {scalar_t__ cmd; int req_id; } ;


 int MEI_DUMP_NFC_HDR (char*,struct mei_nfc_hdr*) ;
 scalar_t__ MEI_NFC_CMD_HCI_SEND ;
 int mei_cldev_recv (int ,int *,size_t) ;
 int wake_up (int *) ;

__attribute__((used)) static int mei_nfc_recv(struct nfc_mei_phy *phy, u8 *buf, size_t length)
{
 struct mei_nfc_hdr *hdr;
 int received_length;

 received_length = mei_cldev_recv(phy->cldev, buf, length);
 if (received_length < 0)
  return received_length;

 hdr = (struct mei_nfc_hdr *) buf;

 MEI_DUMP_NFC_HDR("receive", hdr);
 if (hdr->cmd == MEI_NFC_CMD_HCI_SEND) {
  phy->recv_req_id = hdr->req_id;
  wake_up(&phy->send_wq);

  return 0;
 }

 return received_length;
}
