
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_nci_info {int flags; int ndlc; } ;
struct nci_dev {int dummy; } ;


 int ST_NCI_RUNNING ;
 int clear_bit (int ,int *) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int ndlc_close (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int st_nci_close(struct nci_dev *ndev)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);

 if (!test_bit(ST_NCI_RUNNING, &info->flags))
  return 0;

 ndlc_close(info->ndlc);

 clear_bit(ST_NCI_RUNNING, &info->flags);

 return 0;
}
