
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_mei_phy {int hdev; } ;
struct mei_cl_device {int dummy; } ;


 struct nfc_mei_phy* mei_cldev_get_drvdata (struct mei_cl_device*) ;
 int nfc_mei_phy_free (struct nfc_mei_phy*) ;
 int pn544_hci_remove (int ) ;
 int pr_info (char*) ;

__attribute__((used)) static int pn544_mei_remove(struct mei_cl_device *cldev)
{
 struct nfc_mei_phy *phy = mei_cldev_get_drvdata(cldev);

 pr_info("Removing pn544\n");

 pn544_hci_remove(phy->hdev);

 nfc_mei_phy_free(phy);

 return 0;
}
