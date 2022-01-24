#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mt76x02_patch_header {int /*<<< orphan*/  build_time; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MT7662_ROM_PATCH ; 
 scalar_t__ MT76XX_REV_E3 ; 
 int MT_MCU_CLOCK_CTL ; 
 int MT_MCU_COM_REG0 ; 
 int /*<<< orphan*/  MT_MCU_INT_LEVEL ; 
 int /*<<< orphan*/  MT_MCU_PCIE_REMAP_BASE4 ; 
 int /*<<< orphan*/  MT_MCU_ROM_PATCH_ADDR ; 
 int MT_MCU_ROM_PATCH_OFFSET ; 
 int /*<<< orphan*/  MT_MCU_SEMAPHORE_03 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int,int,int,int) ; 
 int FUNC6 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct firmware const*) ; 
 int FUNC11 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct mt76x02_dev *dev)
{
	const struct firmware *fw = NULL;
	struct mt76x02_patch_header *hdr;
	bool rom_protect = !FUNC3(dev);
	int len, ret = 0;
	__le32 *cur;
	u32 patch_mask, patch_reg;

	if (rom_protect && !FUNC4(dev, MT_MCU_SEMAPHORE_03, 1, 1, 600)) {
		FUNC1(dev->mt76.dev,
			"Could not get hardware semaphore for ROM PATCH\n");
		return -ETIMEDOUT;
	}

	if (FUNC9(dev) >= MT76XX_REV_E3) {
		patch_mask = FUNC0(0);
		patch_reg = MT_MCU_CLOCK_CTL;
	} else {
		patch_mask = FUNC0(1);
		patch_reg = MT_MCU_COM_REG0;
	}

	if (rom_protect && (FUNC6(dev, patch_reg) & patch_mask)) {
		FUNC2(dev->mt76.dev, "ROM patch already applied\n");
		goto out;
	}

	ret = FUNC11(&fw, MT7662_ROM_PATCH, dev->mt76.dev);
	if (ret)
		goto out;

	if (!fw || !fw->data || fw->size <= sizeof(*hdr)) {
		ret = -EIO;
		FUNC1(dev->mt76.dev, "Failed to load firmware\n");
		goto out;
	}

	hdr = (struct mt76x02_patch_header *)fw->data;
	FUNC2(dev->mt76.dev, "ROM patch build: %.15s\n", hdr->build_time);

	FUNC7(dev, MT_MCU_PCIE_REMAP_BASE4, MT_MCU_ROM_PATCH_OFFSET);

	cur = (__le32 *)(fw->data + sizeof(*hdr));
	len = fw->size - sizeof(*hdr);
	FUNC8(dev, MT_MCU_ROM_PATCH_ADDR, cur, len);

	FUNC7(dev, MT_MCU_PCIE_REMAP_BASE4, 0);

	/* Trigger ROM */
	FUNC7(dev, MT_MCU_INT_LEVEL, 4);

	if (!FUNC5(dev, patch_reg, patch_mask, patch_mask, 2000)) {
		FUNC1(dev->mt76.dev, "Failed to load ROM patch\n");
		ret = -ETIMEDOUT;
	}

out:
	/* release semaphore */
	if (rom_protect)
		FUNC7(dev, MT_MCU_SEMAPHORE_03, 1);
	FUNC10(fw);
	return ret;
}