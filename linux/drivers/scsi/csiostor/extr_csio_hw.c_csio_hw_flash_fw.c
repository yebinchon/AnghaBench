
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct pci_dev {int device; struct device dev; } ;
struct fw_info {int dummy; } ;
struct fw_hdr {int dummy; } ;
struct firmware {unsigned int size; int * data; } ;
struct csio_hw {int fw_state; int chip_id; struct pci_dev* pdev; } ;


 int CHELSIO_CHIP_VERSION (int ) ;
 int CSIO_HW_CHIP_MASK ;
 int ECANCELED ;
 int EINVAL ;
 int ENOMEM ;
 char* FW_FNAME_T5 ;
 char* FW_FNAME_T6 ;
 int GFP_KERNEL ;
 int csio_err (struct csio_hw*,char*,char const*,...) ;
 int csio_hw_prep_fw (struct csio_hw*,struct fw_info*,int const*,unsigned int,struct fw_hdr*,int ,int*) ;
 scalar_t__ csio_is_t5 (int) ;
 struct fw_info* find_fw_info (int ) ;
 int kfree (struct fw_hdr*) ;
 struct fw_hdr* kmalloc (int,int ) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,char const*,struct device*) ;

__attribute__((used)) static int
csio_hw_flash_fw(struct csio_hw *hw, int *reset)
{
 int ret = -ECANCELED;
 const struct firmware *fw;
 struct fw_info *fw_info;
 struct fw_hdr *card_fw;
 struct pci_dev *pci_dev = hw->pdev;
 struct device *dev = &pci_dev->dev ;
 const u8 *fw_data = ((void*)0);
 unsigned int fw_size = 0;
 const char *fw_bin_file;




 fw_info = find_fw_info(CHELSIO_CHIP_VERSION(hw->chip_id));
 if (fw_info == ((void*)0)) {
  csio_err(hw,
   "unable to get firmware info for chip %d.\n",
   CHELSIO_CHIP_VERSION(hw->chip_id));
  return -EINVAL;
 }




 card_fw = kmalloc(sizeof(*card_fw), GFP_KERNEL);
 if (!card_fw)
  return -ENOMEM;

 if (csio_is_t5(pci_dev->device & CSIO_HW_CHIP_MASK))
  fw_bin_file = FW_FNAME_T5;
 else
  fw_bin_file = FW_FNAME_T6;

 if (request_firmware(&fw, fw_bin_file, dev) < 0) {
  csio_err(hw, "could not find firmware image %s, err: %d\n",
    fw_bin_file, ret);
 } else {
  fw_data = fw->data;
  fw_size = fw->size;
 }


 ret = csio_hw_prep_fw(hw, fw_info, fw_data, fw_size, card_fw,
    hw->fw_state, reset);


 if (fw != ((void*)0))
  release_firmware(fw);
 kfree(card_fw);
 return ret;
}
