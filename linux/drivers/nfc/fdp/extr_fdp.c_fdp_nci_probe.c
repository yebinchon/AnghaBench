
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nfc_phy_ops {int dummy; } ;
struct nci_dev {int dummy; } ;
struct fdp_nci_info {int clock_freq; struct nci_dev* ndev; int setup_wq; int * fw_vsc_cfg; int clock_type; struct nfc_phy_ops* phy_ops; struct fdp_i2c_phy* phy; } ;
struct fdp_i2c_phy {TYPE_1__* i2c_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NFC_PROTO_FELICA_MASK ;
 int NFC_PROTO_ISO14443_B_MASK ;
 int NFC_PROTO_ISO14443_MASK ;
 int NFC_PROTO_ISO15693_MASK ;
 int NFC_PROTO_JEWEL_MASK ;
 int NFC_PROTO_MIFARE_MASK ;
 int NFC_PROTO_NFC_DEP_MASK ;
 struct fdp_nci_info* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 struct nci_dev* nci_allocate_device (int *,int,int,int) ;
 int nci_free_device (struct nci_dev*) ;
 int nci_ops ;
 int nci_register_device (struct nci_dev*) ;
 int nci_set_drvdata (struct nci_dev*,struct fdp_nci_info*) ;
 int nfc_err (struct device*,char*) ;

int fdp_nci_probe(struct fdp_i2c_phy *phy, struct nfc_phy_ops *phy_ops,
   struct nci_dev **ndevp, int tx_headroom,
   int tx_tailroom, u8 clock_type, u32 clock_freq,
   u8 *fw_vsc_cfg)
{
 struct device *dev = &phy->i2c_dev->dev;
 struct fdp_nci_info *info;
 struct nci_dev *ndev;
 u32 protocols;
 int r;

 info = devm_kzalloc(dev, sizeof(struct fdp_nci_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->phy = phy;
 info->phy_ops = phy_ops;
 info->clock_type = clock_type;
 info->clock_freq = clock_freq;
 info->fw_vsc_cfg = fw_vsc_cfg;

 init_waitqueue_head(&info->setup_wq);

 protocols = NFC_PROTO_JEWEL_MASK |
      NFC_PROTO_MIFARE_MASK |
      NFC_PROTO_FELICA_MASK |
      NFC_PROTO_ISO14443_MASK |
      NFC_PROTO_ISO14443_B_MASK |
      NFC_PROTO_NFC_DEP_MASK |
      NFC_PROTO_ISO15693_MASK;

 ndev = nci_allocate_device(&nci_ops, protocols, tx_headroom,
       tx_tailroom);
 if (!ndev) {
  nfc_err(dev, "Cannot allocate nfc ndev\n");
  return -ENOMEM;
 }

 r = nci_register_device(ndev);
 if (r)
  goto err_regdev;

 *ndevp = ndev;
 info->ndev = ndev;

 nci_set_drvdata(ndev, info);

 return 0;

err_regdev:
 nci_free_device(ndev);
 return r;
}
