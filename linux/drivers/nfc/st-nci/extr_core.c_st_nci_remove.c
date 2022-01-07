
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_nci_info {int ndlc; } ;
struct nci_dev {int dummy; } ;


 int nci_free_device (struct nci_dev*) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int nci_unregister_device (struct nci_dev*) ;
 int ndlc_close (int ) ;

void st_nci_remove(struct nci_dev *ndev)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);

 ndlc_close(info->ndlc);

 nci_unregister_device(ndev);
 nci_free_device(ndev);
}
