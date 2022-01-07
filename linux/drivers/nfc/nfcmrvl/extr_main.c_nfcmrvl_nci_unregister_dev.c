
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reset_n_io; } ;
struct nfcmrvl_private {TYPE_2__ config; struct nci_dev* ndev; } ;
struct nci_dev {TYPE_1__* nfc_dev; } ;
struct TYPE_3__ {scalar_t__ fw_download_in_progress; } ;


 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (struct nfcmrvl_private*) ;
 int nci_free_device (struct nci_dev*) ;
 int nci_unregister_device (struct nci_dev*) ;
 int nfcmrvl_fw_dnld_abort (struct nfcmrvl_private*) ;
 int nfcmrvl_fw_dnld_deinit (struct nfcmrvl_private*) ;

void nfcmrvl_nci_unregister_dev(struct nfcmrvl_private *priv)
{
 struct nci_dev *ndev = priv->ndev;

 if (priv->ndev->nfc_dev->fw_download_in_progress)
  nfcmrvl_fw_dnld_abort(priv);

 nfcmrvl_fw_dnld_deinit(priv);

 if (gpio_is_valid(priv->config.reset_n_io))
  gpio_free(priv->config.reset_n_io);

 nci_unregister_device(ndev);
 nci_free_device(ndev);
 kfree(priv);
}
