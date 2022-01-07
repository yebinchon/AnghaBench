
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct fdp_nci_info {int setup_patch_sent; int setup_wq; } ;


 struct fdp_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int wake_up (int *) ;

__attribute__((used)) static void fdp_nci_send_patch_cb(struct nci_dev *ndev)
{
 struct fdp_nci_info *info = nci_get_drvdata(ndev);

 info->setup_patch_sent = 1;
 wake_up(&info->setup_wq);
}
