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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct pci_dev {int device; struct device dev; } ;
struct firmware {int size; scalar_t__ data; } ;
struct csio_hw {struct pci_dev* pdev; } ;

/* Variables and functions */
 int CSIO_HW_CHIP_MASK ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 char* FW_CFG_NAME_T5 ; 
 char* FW_CFG_NAME_T6 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*,char const*,int) ; 
 scalar_t__ FUNC3 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,char*,char const*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct csio_hw*,unsigned int,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct firmware const*) ; 
 scalar_t__ FUNC11 (struct firmware const**,char const*,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static int
FUNC13(struct csio_hw *hw, u32 *fw_cfg_param, char *path)
{
	int ret = 0;
	const struct firmware *cf;
	struct pci_dev *pci_dev = hw->pdev;
	struct device *dev = &pci_dev->dev;
	unsigned int mtype = 0, maddr = 0;
	uint32_t *cfg_data;
	int value_to_add = 0;
	const char *fw_cfg_file;

	if (FUNC5(pci_dev->device & CSIO_HW_CHIP_MASK))
		fw_cfg_file = FW_CFG_NAME_T5;
	else
		fw_cfg_file = FW_CFG_NAME_T6;

	if (FUNC11(&cf, fw_cfg_file, dev) < 0) {
		FUNC2(hw, "could not find config file %s, err: %d\n",
			 fw_cfg_file, ret);
		return -ENOENT;
	}

	if (cf->size%4 != 0)
		value_to_add = 4 - (cf->size % 4);

	cfg_data = FUNC8(cf->size+value_to_add, GFP_KERNEL);
	if (cfg_data == NULL) {
		ret = -ENOMEM;
		goto leave;
	}

	FUNC9((void *)cfg_data, (const void *)cf->data, cf->size);
	if (FUNC3(hw, fw_cfg_param) != 0) {
		ret = -EINVAL;
		goto leave;
	}

	mtype = FUNC0(*fw_cfg_param);
	maddr = FUNC1(*fw_cfg_param) << 16;

	ret = FUNC6(hw, mtype, maddr,
				cf->size + value_to_add, cfg_data);

	if ((ret == 0) && (value_to_add != 0)) {
		union {
			u32 word;
			char buf[4];
		} last;
		size_t size = cf->size & ~0x3;
		int i;

		last.word = cfg_data[size >> 2];
		for (i = value_to_add; i < 4; i++)
			last.buf[i] = 0;
		ret = FUNC6(hw, mtype, maddr + size, 4, &last.word);
	}
	if (ret == 0) {
		FUNC4(hw, "config file upgraded to %s\n", fw_cfg_file);
		FUNC12(path, 64, "%s%s", "/lib/firmware/", fw_cfg_file);
	}

leave:
	FUNC7(cfg_data);
	FUNC10(cf);
	return ret;
}