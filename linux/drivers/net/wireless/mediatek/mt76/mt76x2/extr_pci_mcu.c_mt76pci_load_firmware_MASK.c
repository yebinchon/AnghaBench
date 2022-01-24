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
struct mt76x02_fw_header {int /*<<< orphan*/  dlm_len; int /*<<< orphan*/  ilm_len; int /*<<< orphan*/  build_time; int /*<<< orphan*/  build_ver; int /*<<< orphan*/  fw_ver; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int ETIMEDOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT7662_FIRMWARE ; 
 scalar_t__ MT76XX_REV_E3 ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_2 ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_2_XTAL_OPTION ; 
 int /*<<< orphan*/  MT_MCU_COM_REG0 ; 
 int MT_MCU_DLM_ADDR ; 
 int MT_MCU_DLM_ADDR_E3 ; 
 int MT_MCU_DLM_OFFSET ; 
 int MT_MCU_ILM_ADDR ; 
 int MT_MCU_ILM_OFFSET ; 
 int /*<<< orphan*/  MT_MCU_INT_LEVEL ; 
 int /*<<< orphan*/  MT_MCU_PCIE_REMAP_BASE4 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76x02_dev*,struct mt76x02_fw_header const*) ; 
 scalar_t__ FUNC12 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct firmware const*) ; 
 int FUNC14 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct mt76x02_dev *dev)
{
	const struct firmware *fw;
	const struct mt76x02_fw_header *hdr;
	int len, ret;
	__le32 *cur;
	u32 offset, val;

	ret = FUNC14(&fw, MT7662_FIRMWARE, dev->mt76.dev);
	if (ret)
		return ret;

	if (!fw || !fw->data || fw->size < sizeof(*hdr))
		goto error;

	hdr = (const struct mt76x02_fw_header *)fw->data;

	len = sizeof(*hdr);
	len += FUNC5(hdr->ilm_len);
	len += FUNC5(hdr->dlm_len);

	if (fw->size != len)
		goto error;

	val = FUNC4(hdr->fw_ver);
	FUNC3(dev->mt76.dev, "Firmware Version: %d.%d.%02d\n",
		 (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf);

	val = FUNC4(hdr->build_ver);
	FUNC3(dev->mt76.dev, "Build: %x\n", val);
	FUNC3(dev->mt76.dev, "Build Time: %.16s\n", hdr->build_time);

	cur = (__le32 *)(fw->data + sizeof(*hdr));
	len = FUNC5(hdr->ilm_len);

	FUNC8(dev, MT_MCU_PCIE_REMAP_BASE4, MT_MCU_ILM_OFFSET);
	FUNC9(dev, MT_MCU_ILM_ADDR, cur, len);

	cur += len / sizeof(*cur);
	len = FUNC5(hdr->dlm_len);

	if (FUNC12(dev) >= MT76XX_REV_E3)
		offset = MT_MCU_DLM_ADDR_E3;
	else
		offset = MT_MCU_DLM_ADDR;

	FUNC8(dev, MT_MCU_PCIE_REMAP_BASE4, MT_MCU_DLM_OFFSET);
	FUNC9(dev, offset, cur, len);

	FUNC8(dev, MT_MCU_PCIE_REMAP_BASE4, 0);

	val = FUNC10(dev, MT_EE_NIC_CONF_2);
	if (FUNC1(MT_EE_NIC_CONF_2_XTAL_OPTION, val) == 1)
		FUNC7(dev, MT_MCU_COM_REG0, FUNC0(30));

	/* trigger firmware */
	FUNC8(dev, MT_MCU_INT_LEVEL, 2);
	if (!FUNC6(dev, MT_MCU_COM_REG0, 1, 1, 200)) {
		FUNC2(dev->mt76.dev, "Firmware failed to start\n");
		FUNC13(fw);
		return -ETIMEDOUT;
	}

	FUNC11(dev, hdr);
	FUNC3(dev->mt76.dev, "Firmware running!\n");

	FUNC13(fw);

	return ret;

error:
	FUNC2(dev->mt76.dev, "Invalid firmware\n");
	FUNC13(fw);
	return -ENOENT;
}