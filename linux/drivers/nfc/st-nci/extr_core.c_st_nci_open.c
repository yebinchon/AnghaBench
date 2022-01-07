
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_nci_info {int flags; int ndlc; } ;
struct nci_dev {int dummy; } ;


 int ST_NCI_RUNNING ;
 int clear_bit (int ,int *) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int ndlc_open (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int st_nci_open(struct nci_dev *ndev)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);
 int r;

 if (test_and_set_bit(ST_NCI_RUNNING, &info->flags))
  return 0;

 r = ndlc_open(info->ndlc);
 if (r)
  clear_bit(ST_NCI_RUNNING, &info->flags);

 return r;
}
