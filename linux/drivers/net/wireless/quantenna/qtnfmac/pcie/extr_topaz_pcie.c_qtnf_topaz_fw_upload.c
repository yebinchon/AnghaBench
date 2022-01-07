
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct pci_dev* pdev; } ;
struct qtnf_pcie_topaz_state {TYPE_2__* bda; TYPE_1__ base; } ;
struct pci_dev {int dev; } ;
struct firmware {int size; int data; } ;
struct TYPE_4__ {int bda_bootstate; } ;


 int QTN_BDA_FW_LOAD_RDY ;
 int QTN_FW_DL_TIMEOUT_MS ;
 int pr_err (char*,char const*,...) ;
 int pr_info (char*,char const*) ;
 int qtnf_ep_fw_load (struct qtnf_pcie_topaz_state*,int ,int ) ;
 scalar_t__ qtnf_poll_state (int *,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int qtnf_topaz_fw_upload(struct qtnf_pcie_topaz_state *ts,
    const char *fwname)
{
 const struct firmware *fw;
 struct pci_dev *pdev = ts->base.pdev;
 int ret;

 if (qtnf_poll_state(&ts->bda->bda_bootstate,
       QTN_BDA_FW_LOAD_RDY,
       QTN_FW_DL_TIMEOUT_MS)) {
  pr_err("%s: card is not ready\n", fwname);
  return -1;
 }

 pr_info("starting firmware upload: %s\n", fwname);

 ret = request_firmware(&fw, fwname, &pdev->dev);
 if (ret < 0) {
  pr_err("%s: request_firmware error %d\n", fwname, ret);
  return -1;
 }

 ret = qtnf_ep_fw_load(ts, fw->data, fw->size);
 release_firmware(fw);

 if (ret)
  pr_err("%s: FW upload error\n", fwname);

 return ret;
}
