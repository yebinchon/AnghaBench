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
struct mt76x02_fw_header {int build_time; int /*<<< orphan*/  build_ver; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  dlm_len; int /*<<< orphan*/  ilm_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CFG ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MCU_FW_URB_MAX_PAYLOAD ; 
 int /*<<< orphan*/  MT7662_FIRMWARE ; 
 int MT76U_MCU_DLM_OFFSET ; 
 int MT76U_MCU_ILM_OFFSET ; 
 scalar_t__ MT76XX_REV_E3 ; 
 int /*<<< orphan*/  MT_FCE_PDMA_GLOBAL_CONF ; 
 int /*<<< orphan*/  MT_FCE_PSE_CTRL ; 
 int /*<<< orphan*/  MT_FCE_SKIP_FS ; 
 int /*<<< orphan*/  MT_MCU_COM_REG0 ; 
 int /*<<< orphan*/  MT_TX_CPU_FROM_FCE_BASE_PTR ; 
 int /*<<< orphan*/  MT_TX_CPU_FROM_FCE_MAX_COUNT ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_RX_BULK_AGG_TOUT ; 
 int MT_USB_DMA_CFG_RX_BULK_EN ; 
 int MT_USB_DMA_CFG_TX_BULK_EN ; 
 int /*<<< orphan*/  MT_USB_U3DMA_CFG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76x02_dev*,struct mt76x02_fw_header const*) ; 
 int /*<<< orphan*/  FUNC12 (struct mt76x02_dev*) ; 
 int FUNC13 (struct mt76x02_dev*,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC15 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct firmware const*) ; 
 int FUNC17 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 

__attribute__((used)) static int FUNC19(struct mt76x02_dev *dev)
{
	u32 val, dlm_offset = MT76U_MCU_DLM_OFFSET;
	const struct mt76x02_fw_header *hdr;
	int err, len, ilm_len, dlm_len;
	const struct firmware *fw;

	err = FUNC17(&fw, MT7662_FIRMWARE, dev->mt76.dev);
	if (err < 0)
		return err;

	if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
		err = -EINVAL;
		goto out;
	}

	hdr = (const struct mt76x02_fw_header *)fw->data;
	ilm_len = FUNC7(hdr->ilm_len);
	dlm_len = FUNC7(hdr->dlm_len);
	len = sizeof(*hdr) + ilm_len + dlm_len;
	if (fw->size != len) {
		err = -EINVAL;
		goto out;
	}

	val = FUNC6(hdr->fw_ver);
	FUNC5(dev->mt76.dev, "Firmware Version: %d.%d.%02d\n",
		 (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf);

	val = FUNC6(hdr->build_ver);
	FUNC5(dev->mt76.dev, "Build: %x\n", val);
	FUNC5(dev->mt76.dev, "Build Time: %.16s\n", hdr->build_time);

	/* vendor reset */
	FUNC12(dev);
	FUNC18(5000, 10000);

	/* enable USB_DMA_CFG */
	val = MT_USB_DMA_CFG_RX_BULK_EN |
	      MT_USB_DMA_CFG_TX_BULK_EN |
	      FUNC1(MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, 0x20);
	FUNC10(dev, FUNC2(CFG, MT_USB_U3DMA_CFG), val);
	/* enable FCE to send in-band cmd */
	FUNC10(dev, MT_FCE_PSE_CTRL, 0x1);
	/* FCE tx_fs_base_ptr */
	FUNC10(dev, MT_TX_CPU_FROM_FCE_BASE_PTR, 0x400230);
	/* FCE tx_fs_max_cnt */
	FUNC10(dev, MT_TX_CPU_FROM_FCE_MAX_COUNT, 0x1);
	/* FCE pdma enable */
	FUNC10(dev, MT_FCE_PDMA_GLOBAL_CONF, 0x44);
	/* FCE skip_fs_en */
	FUNC10(dev, MT_FCE_SKIP_FS, 0x3);

	/* load ILM */
	err = FUNC13(dev, fw->data + sizeof(*hdr),
					ilm_len, MCU_FW_URB_MAX_PAYLOAD,
					MT76U_MCU_ILM_OFFSET);
	if (err < 0) {
		err = -EIO;
		goto out;
	}

	/* load DLM */
	if (FUNC15(dev) >= MT76XX_REV_E3)
		dlm_offset += 0x800;
	err = FUNC13(dev, fw->data + sizeof(*hdr) + ilm_len,
					dlm_len, MCU_FW_URB_MAX_PAYLOAD,
					dlm_offset);
	if (err < 0) {
		err = -EIO;
		goto out;
	}

	FUNC14(dev);
	if (!FUNC8(dev, MT_MCU_COM_REG0, 1, 1, 100)) {
		FUNC4(dev->mt76.dev, "firmware failed to start\n");
		err = -ETIMEDOUT;
		goto out;
	}

	FUNC9(dev, MT_MCU_COM_REG0, FUNC0(1));
	/* enable FCE to send in-band cmd */
	FUNC10(dev, MT_FCE_PSE_CTRL, 0x1);
	FUNC11(dev, hdr);
	FUNC3(dev->mt76.dev, "firmware running\n");

out:
	FUNC16(fw);
	return err;
}