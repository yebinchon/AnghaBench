
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_nci_info {int ndlc; int flags; } ;
struct sk_buff {void* dev; } ;
struct nci_dev {int dummy; } ;


 int EBUSY ;
 int ST_NCI_RUNNING ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int ndlc_send (int ,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int st_nci_send(struct nci_dev *ndev, struct sk_buff *skb)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);

 skb->dev = (void *)ndev;

 if (!test_bit(ST_NCI_RUNNING, &info->flags))
  return -EBUSY;

 return ndlc_send(info->ndlc, skb);
}
