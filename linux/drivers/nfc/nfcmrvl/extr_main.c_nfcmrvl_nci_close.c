
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfcmrvl_private {TYPE_1__* if_ops; int flags; } ;
struct nci_dev {int dummy; } ;
struct TYPE_2__ {int (* nci_close ) (struct nfcmrvl_private*) ;} ;


 int NFCMRVL_NCI_RUNNING ;
 struct nfcmrvl_private* nci_get_drvdata (struct nci_dev*) ;
 int stub1 (struct nfcmrvl_private*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int nfcmrvl_nci_close(struct nci_dev *ndev)
{
 struct nfcmrvl_private *priv = nci_get_drvdata(ndev);

 if (!test_and_clear_bit(NFCMRVL_NCI_RUNNING, &priv->flags))
  return 0;

 priv->if_ops->nci_close(priv);

 return 0;
}
