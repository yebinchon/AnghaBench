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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CFG ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MCU_ROM_PATCH_MAX_PAYLOAD ; 
 int /*<<< orphan*/  MT7662_ROM_PATCH ; 
 int /*<<< orphan*/  MT76U_MCU_ROM_PATCH_OFFSET ; 
 scalar_t__ MT76XX_REV_E3 ; 
 int MT_FCE_PDMA_GLOBAL_CONF ; 
 int MT_FCE_PSE_CTRL ; 
 int MT_FCE_SKIP_FS ; 
 int MT_MCU_CLOCK_CTL ; 
 int MT_MCU_COM_REG0 ; 
 int MT_MCU_SEMAPHORE_03 ; 
 int MT_TX_CPU_FROM_FCE_BASE_PTR ; 
 int MT_TX_CPU_FROM_FCE_MAX_COUNT ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_RX_BULK_AGG_TOUT ; 
 int MT_USB_DMA_CFG_RX_BULK_EN ; 
 int MT_USB_DMA_CFG_TX_BULK_EN ; 
 int /*<<< orphan*/  MT_USB_U3DMA_CFG ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int,int,int,int) ; 
 int FUNC8 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*) ; 
 int FUNC11 (struct mt76x02_dev*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC14 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct firmware const*) ; 
 int FUNC16 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 

__attribute__((used)) static int FUNC18(struct mt76x02_dev *dev)
{
	bool rom_protect = !FUNC5(dev);
	struct mt76x02_patch_header *hdr;
	u32 val, patch_mask, patch_reg;
	const struct firmware *fw;
	int err;

	if (rom_protect &&
	    !FUNC7(dev, MT_MCU_SEMAPHORE_03, 1, 1, 600)) {
		FUNC3(dev->mt76.dev,
			"could not get hardware semaphore for ROM PATCH\n");
		return -ETIMEDOUT;
	}

	if (FUNC14(dev) >= MT76XX_REV_E3) {
		patch_mask = FUNC0(0);
		patch_reg = MT_MCU_CLOCK_CTL;
	} else {
		patch_mask = FUNC0(1);
		patch_reg = MT_MCU_COM_REG0;
	}

	if (rom_protect && (FUNC8(dev, patch_reg) & patch_mask)) {
		FUNC4(dev->mt76.dev, "ROM patch already applied\n");
		return 0;
	}

	err = FUNC16(&fw, MT7662_ROM_PATCH, dev->mt76.dev);
	if (err < 0)
		return err;

	if (!fw || !fw->data || fw->size <= sizeof(*hdr)) {
		FUNC3(dev->mt76.dev, "failed to load firmware\n");
		err = -EIO;
		goto out;
	}

	hdr = (struct mt76x02_patch_header *)fw->data;
	FUNC4(dev->mt76.dev, "ROM patch build: %.15s\n", hdr->build_time);

	/* enable USB_DMA_CFG */
	val = MT_USB_DMA_CFG_RX_BULK_EN |
	      MT_USB_DMA_CFG_TX_BULK_EN |
	      FUNC1(MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, 0x20);
	FUNC9(dev, FUNC2(CFG, MT_USB_U3DMA_CFG), val);

	/* vendor reset */
	FUNC10(dev);
	FUNC17(5000, 10000);

	/* enable FCE to send in-band cmd */
	FUNC9(dev, MT_FCE_PSE_CTRL, 0x1);
	/* FCE tx_fs_base_ptr */
	FUNC9(dev, MT_TX_CPU_FROM_FCE_BASE_PTR, 0x400230);
	/* FCE tx_fs_max_cnt */
	FUNC9(dev, MT_TX_CPU_FROM_FCE_MAX_COUNT, 0x1);
	/* FCE pdma enable */
	FUNC9(dev, MT_FCE_PDMA_GLOBAL_CONF, 0x44);
	/* FCE skip_fs_en */
	FUNC9(dev, MT_FCE_SKIP_FS, 0x3);

	err = FUNC11(dev, fw->data + sizeof(*hdr),
					fw->size - sizeof(*hdr),
					MCU_ROM_PATCH_MAX_PAYLOAD,
					MT76U_MCU_ROM_PATCH_OFFSET);
	if (err < 0) {
		err = -EIO;
		goto out;
	}

	FUNC12(dev);
	FUNC13(dev);
	FUNC6(20);

	if (!FUNC7(dev, patch_reg, patch_mask, patch_mask, 100)) {
		FUNC3(dev->mt76.dev, "failed to load ROM patch\n");
		err = -ETIMEDOUT;
	}

out:
	if (rom_protect)
		FUNC9(dev, MT_MCU_SEMAPHORE_03, 1);
	FUNC15(fw);
	return err;
}