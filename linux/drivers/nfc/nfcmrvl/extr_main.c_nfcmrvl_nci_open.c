
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfcmrvl_private {int flags; TYPE_1__* if_ops; } ;
struct nci_dev {int dummy; } ;
struct TYPE_2__ {int (* nci_open ) (struct nfcmrvl_private*) ;} ;


 int NFCMRVL_NCI_RUNNING ;
 int NFCMRVL_PHY_ERROR ;
 int clear_bit (int ,int *) ;
 struct nfcmrvl_private* nci_get_drvdata (struct nci_dev*) ;
 int stub1 (struct nfcmrvl_private*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int nfcmrvl_nci_open(struct nci_dev *ndev)
{
 struct nfcmrvl_private *priv = nci_get_drvdata(ndev);
 int err;

 if (test_and_set_bit(NFCMRVL_NCI_RUNNING, &priv->flags))
  return 0;


 clear_bit(NFCMRVL_PHY_ERROR, &priv->flags);

 err = priv->if_ops->nci_open(priv);

 if (err)
  clear_bit(NFCMRVL_NCI_RUNNING, &priv->flags);

 return err;
}
