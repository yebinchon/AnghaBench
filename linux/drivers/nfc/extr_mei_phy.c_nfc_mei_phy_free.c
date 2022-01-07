
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_mei_phy {int cldev; } ;


 int kfree (struct nfc_mei_phy*) ;
 int mei_cldev_disable (int ) ;

void nfc_mei_phy_free(struct nfc_mei_phy *phy)
{
 mei_cldev_disable(phy->cldev);
 kfree(phy);
}
