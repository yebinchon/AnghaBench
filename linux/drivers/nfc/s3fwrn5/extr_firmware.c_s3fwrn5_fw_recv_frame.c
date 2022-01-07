
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct s3fwrn5_fw_info {int completion; struct sk_buff* rsp; } ;
struct s3fwrn5_info {struct s3fwrn5_fw_info fw_info; } ;
struct nci_dev {int dummy; } ;


 int BUG_ON (struct sk_buff*) ;
 int complete (int *) ;
 struct s3fwrn5_info* nci_get_drvdata (struct nci_dev*) ;

int s3fwrn5_fw_recv_frame(struct nci_dev *ndev, struct sk_buff *skb)
{
 struct s3fwrn5_info *info = nci_get_drvdata(ndev);
 struct s3fwrn5_fw_info *fw_info = &info->fw_info;

 BUG_ON(fw_info->rsp);

 fw_info->rsp = skb;

 complete(&fw_info->completion);

 return 0;
}
