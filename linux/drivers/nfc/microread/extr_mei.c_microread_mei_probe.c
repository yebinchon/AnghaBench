
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_mei_phy {int hdev; } ;
struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int dummy; } ;


 int ENOMEM ;
 int LLC_NOP_NAME ;
 int MEI_NFC_HEADER_SIZE ;
 int MEI_NFC_MAX_HCI_PAYLOAD ;
 int mei_phy_ops ;
 int microread_probe (struct nfc_mei_phy*,int *,int ,int ,int ,int ,int *) ;
 struct nfc_mei_phy* nfc_mei_phy_alloc (struct mei_cl_device*) ;
 int nfc_mei_phy_free (struct nfc_mei_phy*) ;
 int pr_err (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static int microread_mei_probe(struct mei_cl_device *cldev,
          const struct mei_cl_device_id *id)
{
 struct nfc_mei_phy *phy;
 int r;

 pr_info("Probing NFC microread\n");

 phy = nfc_mei_phy_alloc(cldev);
 if (!phy) {
  pr_err("Cannot allocate memory for microread mei phy.\n");
  return -ENOMEM;
 }

 r = microread_probe(phy, &mei_phy_ops, LLC_NOP_NAME,
       MEI_NFC_HEADER_SIZE, 0, MEI_NFC_MAX_HCI_PAYLOAD,
       &phy->hdev);
 if (r < 0) {
  nfc_mei_phy_free(phy);

  return r;
 }

 return 0;
}
