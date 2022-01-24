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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct mt76x02_fw_header {int /*<<< orphan*/  ilm_len; int /*<<< orphan*/  dlm_len; int /*<<< orphan*/  build_time; int /*<<< orphan*/  build_ver; int /*<<< orphan*/  fw_ver; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 char* MT7610E_FIRMWARE ; 
 char* MT7650E_FIRMWARE ; 
 int /*<<< orphan*/  MT_MCU_COM_REG0 ; 
 int MT_MCU_DLM_OFFSET ; 
 int MT_MCU_ILM_ADDR ; 
 int /*<<< orphan*/  MT_MCU_INT_LEVEL ; 
 int MT_MCU_IVB_ADDR ; 
 int MT_MCU_IVB_SIZE ; 
 int /*<<< orphan*/  MT_MCU_PCIE_REMAP_BASE4 ; 
 int /*<<< orphan*/  MT_MCU_RESET_CTL ; 
 int /*<<< orphan*/  MT_MCU_SEMAPHORE_00 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*,struct mt76x02_fw_header const*) ; 
 int /*<<< orphan*/  FUNC11 (struct firmware const*) ; 
 int FUNC12 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mt76x02_dev *dev)
{
	bool is_combo_chip = FUNC5(&dev->mt76) != 0x7610;
	u32 val, ilm_len, dlm_len, offset = 0;
	const struct mt76x02_fw_header *hdr;
	const struct firmware *fw;
	const char *firmware;
	const u8 *fw_payload;
	int len, err;

	if (is_combo_chip)
		firmware = MT7650E_FIRMWARE;
	else
		firmware = MT7610E_FIRMWARE;

	err = FUNC12(&fw, firmware, dev->mt76.dev);
	if (err)
		return err;

	if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
		err = -EIO;
		goto out;
	}

	hdr = (const struct mt76x02_fw_header *)fw->data;

	len = sizeof(*hdr);
	len += FUNC4(hdr->ilm_len);
	len += FUNC4(hdr->dlm_len);

	if (fw->size != len) {
		err = -EIO;
		goto out;
	}

	fw_payload = fw->data + sizeof(*hdr);

	val = FUNC3(hdr->fw_ver);
	FUNC2(dev->mt76.dev, "Firmware Version: %d.%d.%02d\n",
		 (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf);

	val = FUNC3(hdr->fw_ver);
	FUNC0(dev->mt76.dev,
		"Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\n",
		(val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf,
		FUNC3(hdr->build_ver), hdr->build_time);

	if (is_combo_chip && !FUNC6(dev, MT_MCU_SEMAPHORE_00, 1, 1, 600)) {
		FUNC1(dev->mt76.dev,
			"Could not get hardware semaphore for loading fw\n");
		err = -ETIMEDOUT;
		goto out;
	}

	/* upload ILM. */
	FUNC8(dev, MT_MCU_PCIE_REMAP_BASE4, 0);
	ilm_len = FUNC4(hdr->ilm_len);
	if (is_combo_chip) {
		ilm_len -= MT_MCU_IVB_SIZE;
		offset = MT_MCU_IVB_SIZE;
	}
	FUNC0(dev->mt76.dev, "loading FW - ILM %u\n", ilm_len);
	FUNC9(dev, MT_MCU_ILM_ADDR + offset, fw_payload + offset,
		     ilm_len);

	/* upload IVB. */
	if (is_combo_chip) {
		FUNC0(dev->mt76.dev, "loading FW - IVB %u\n",
			MT_MCU_IVB_SIZE);
		FUNC9(dev, MT_MCU_IVB_ADDR, fw_payload, MT_MCU_IVB_SIZE);
	}

	/* upload DLM. */
	FUNC8(dev, MT_MCU_PCIE_REMAP_BASE4, MT_MCU_DLM_OFFSET);
	dlm_len = FUNC4(hdr->dlm_len);
	FUNC0(dev->mt76.dev, "loading FW - DLM %u\n", dlm_len);
	FUNC9(dev, MT_MCU_ILM_ADDR,
		     fw_payload + FUNC4(hdr->ilm_len), dlm_len);

	/* trigger firmware */
	FUNC8(dev, MT_MCU_PCIE_REMAP_BASE4, 0);
	if (is_combo_chip)
		FUNC8(dev, MT_MCU_INT_LEVEL, 0x3);
	else
		FUNC8(dev, MT_MCU_RESET_CTL, 0x300);

	if (!FUNC7(dev, MT_MCU_COM_REG0, 1, 1, 1000)) {
		FUNC1(dev->mt76.dev, "Firmware failed to start\n");
		err = -ETIMEDOUT;
		goto out;
	}

	FUNC10(dev, hdr);
	FUNC0(dev->mt76.dev, "Firmware running!\n");

out:
	if (is_combo_chip)
		FUNC8(dev, MT_MCU_SEMAPHORE_00, 0x1);
	FUNC11(fw);

	return err;
}