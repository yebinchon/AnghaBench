#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct pci_dev {int device; struct device dev; } ;
struct fw_info {int dummy; } ;
struct fw_hdr {int dummy; } ;
struct firmware {unsigned int size; int /*<<< orphan*/ * data; } ;
struct csio_hw {int /*<<< orphan*/  fw_state; int /*<<< orphan*/  chip_id; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CSIO_HW_CHIP_MASK ; 
 int ECANCELED ; 
 int EINVAL ; 
 int ENOMEM ; 
 char* FW_FNAME_T5 ; 
 char* FW_FNAME_T6 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,char const*,...) ; 
 int FUNC2 (struct csio_hw*,struct fw_info*,int /*<<< orphan*/  const*,unsigned int,struct fw_hdr*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct fw_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_hdr*) ; 
 struct fw_hdr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 scalar_t__ FUNC8 (struct firmware const**,char const*,struct device*) ; 

__attribute__((used)) static int
FUNC9(struct csio_hw *hw, int *reset)
{
	int ret = -ECANCELED;
	const struct firmware *fw;
	struct fw_info *fw_info;
	struct fw_hdr *card_fw;
	struct pci_dev *pci_dev = hw->pdev;
	struct device *dev = &pci_dev->dev ;
	const u8 *fw_data = NULL;
	unsigned int fw_size = 0;
	const char *fw_bin_file;

	/* This is the firmware whose headers the driver was compiled
	 * against
	 */
	fw_info = FUNC4(FUNC0(hw->chip_id));
	if (fw_info == NULL) {
		FUNC1(hw,
			"unable to get firmware info for chip %d.\n",
			FUNC0(hw->chip_id));
		return -EINVAL;
	}

	/* allocate memory to read the header of the firmware on the
	 * card
	 */
	card_fw = FUNC6(sizeof(*card_fw), GFP_KERNEL);
	if (!card_fw)
		return -ENOMEM;

	if (FUNC3(pci_dev->device & CSIO_HW_CHIP_MASK))
		fw_bin_file = FW_FNAME_T5;
	else
		fw_bin_file = FW_FNAME_T6;

	if (FUNC8(&fw, fw_bin_file, dev) < 0) {
		FUNC1(hw, "could not find firmware image %s, err: %d\n",
			 fw_bin_file, ret);
	} else {
		fw_data = fw->data;
		fw_size = fw->size;
	}

	/* upgrade FW logic */
	ret = FUNC2(hw, fw_info, fw_data, fw_size, card_fw,
			 hw->fw_state, reset);

	/* Cleaning up */
	if (fw != NULL)
		FUNC7(fw);
	FUNC5(card_fw);
	return ret;
}