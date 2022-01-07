
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nci_dev {int dummy; } ;
typedef enum s3fwrn5_mode { ____Placeholder_s3fwrn5_mode } s3fwrn5_mode ;


 int ENODEV ;


 int nci_recv_frame (struct nci_dev*,struct sk_buff*) ;
 int s3fwrn5_fw_recv_frame (struct nci_dev*,struct sk_buff*) ;

int s3fwrn5_recv_frame(struct nci_dev *ndev, struct sk_buff *skb,
 enum s3fwrn5_mode mode)
{
 switch (mode) {
 case 128:
  return nci_recv_frame(ndev, skb);
 case 129:
  return s3fwrn5_fw_recv_frame(ndev, skb);
 default:
  return -ENODEV;
 }
}
