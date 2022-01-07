
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_3__ {int signature; } ;
struct isci_orom {TYPE_2__* ctrl; TYPE_1__ hdr; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_4__ {int afe_tx_amp_control0; int afe_tx_amp_control1; int afe_tx_amp_control2; int afe_tx_amp_control3; struct TYPE_4__* phys; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int GFP_KERNEL ;
 int ISCI_FW_NAME ;
 int ISCI_ROM_SIG ;
 struct isci_orom* devm_kzalloc (int *,int,int ) ;
 scalar_t__ is_c0 (struct pci_dev*) ;
 scalar_t__ is_c1 (struct pci_dev*) ;
 int memcpy (struct isci_orom*,scalar_t__,int) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,int ,int *) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

struct isci_orom *isci_request_firmware(struct pci_dev *pdev, const struct firmware *fw)
{
 struct isci_orom *orom = ((void*)0), *data;
 int i, j;

 if (request_firmware(&fw, ISCI_FW_NAME, &pdev->dev) != 0)
  return ((void*)0);

 if (fw->size < sizeof(*orom))
  goto out;

 data = (struct isci_orom *)fw->data;

 if (strncmp(ISCI_ROM_SIG, data->hdr.signature,
      strlen(ISCI_ROM_SIG)) != 0)
  goto out;

 orom = devm_kzalloc(&pdev->dev, fw->size, GFP_KERNEL);
 if (!orom)
  goto out;

 memcpy(orom, fw->data, fw->size);

 if (is_c0(pdev) || is_c1(pdev))
  goto out;





 for (i = 0; i < ARRAY_SIZE(orom->ctrl); i++)
  for (j = 0; j < ARRAY_SIZE(orom->ctrl[i].phys); j++) {
   orom->ctrl[i].phys[j].afe_tx_amp_control0 = 0xe7c03;
   orom->ctrl[i].phys[j].afe_tx_amp_control1 = 0xe7c03;
   orom->ctrl[i].phys[j].afe_tx_amp_control2 = 0xe7c03;
   orom->ctrl[i].phys[j].afe_tx_amp_control3 = 0xe7c03;
  }
 out:
 release_firmware(fw);

 return orom;
}
