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
typedef  int u32 ;
struct mt76_fw_header {int /*<<< orphan*/  ilm_len; int /*<<< orphan*/  build_time; int /*<<< orphan*/  build_ver; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  dlm_len; } ;
struct mt76_fw {int dummy; } ;
struct mt7601u_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MT7601U_FIRMWARE ; 
 int MT_FCE_PDMA_GLOBAL_CONF ; 
 int MT_FCE_PSE_CTRL ; 
 int MT_FCE_SKIP_FS ; 
 int MT_MCU_IVB_SIZE ; 
 int /*<<< orphan*/  MT_PBF_CFG ; 
 int MT_PBF_CFG_TX0Q_EN ; 
 int MT_PBF_CFG_TX1Q_EN ; 
 int MT_PBF_CFG_TX2Q_EN ; 
 int MT_PBF_CFG_TX3Q_EN ; 
 int MT_TX_CPU_FROM_FCE_BASE_PTR ; 
 int MT_TX_CPU_FROM_FCE_MAX_COUNT ; 
 int MT_USB_DMA_CFG ; 
 int MT_USB_DMA_CFG_RX_BULK_EN ; 
 int MT_USB_DMA_CFG_TX_BULK_EN ; 
 int MT_USB_DMA_CFG_TX_CLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mt7601u_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mt7601u_dev*,struct mt76_fw const*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7601u_dev*,int,int) ; 
 int FUNC11 (struct mt7601u_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct firmware const*) ; 
 int FUNC13 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct mt7601u_dev *dev)
{
	const struct firmware *fw;
	const struct mt76_fw_header *hdr;
	int len, ret;
	u32 val;

	FUNC10(dev, MT_USB_DMA_CFG, (MT_USB_DMA_CFG_RX_BULK_EN |
					 MT_USB_DMA_CFG_TX_BULK_EN));

	if (FUNC3(dev))
		return FUNC2(dev->dev, MT7601U_FIRMWARE);

	ret = FUNC13(&fw, MT7601U_FIRMWARE, dev->dev);
	if (ret)
		return ret;

	if (!fw || !fw->data || fw->size < sizeof(*hdr))
		goto err_inv_fw;

	hdr = (const struct mt76_fw_header *) fw->data;

	if (FUNC5(hdr->ilm_len) <= MT_MCU_IVB_SIZE)
		goto err_inv_fw;

	len = sizeof(*hdr);
	len += FUNC5(hdr->ilm_len);
	len += FUNC5(hdr->dlm_len);

	if (fw->size != len)
		goto err_inv_fw;

	val = FUNC4(hdr->fw_ver);
	FUNC1(dev->dev,
		 "Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\n",
		 (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf,
		 FUNC4(hdr->build_ver), hdr->build_time);

	len = FUNC5(hdr->ilm_len);

	FUNC10(dev, 0x94c, 0);
	FUNC10(dev, MT_FCE_PSE_CTRL, 0);

	FUNC9(dev);
	FUNC6(5);

	FUNC10(dev, 0xa44, 0);
	FUNC10(dev, 0x230, 0x84210);
	FUNC10(dev, 0x400, 0x80c00);
	FUNC10(dev, 0x800, 1);

	FUNC7(dev, MT_PBF_CFG, 0, (MT_PBF_CFG_TX0Q_EN |
					 MT_PBF_CFG_TX1Q_EN |
					 MT_PBF_CFG_TX2Q_EN |
					 MT_PBF_CFG_TX3Q_EN));

	FUNC10(dev, MT_FCE_PSE_CTRL, 1);

	FUNC10(dev, MT_USB_DMA_CFG, (MT_USB_DMA_CFG_RX_BULK_EN |
					 MT_USB_DMA_CFG_TX_BULK_EN));
	val = FUNC11(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_TX_CLR);
	val &= ~MT_USB_DMA_CFG_TX_CLR;
	FUNC10(dev, MT_USB_DMA_CFG, val);

	/* FCE tx_fs_base_ptr */
	FUNC10(dev, MT_TX_CPU_FROM_FCE_BASE_PTR, 0x400230);
	/* FCE tx_fs_max_cnt */
	FUNC10(dev, MT_TX_CPU_FROM_FCE_MAX_COUNT, 1);
	/* FCE pdma enable */
	FUNC10(dev, MT_FCE_PDMA_GLOBAL_CONF, 0x44);
	/* FCE skip_fs_en */
	FUNC10(dev, MT_FCE_SKIP_FS, 3);

	ret = FUNC8(dev, (const struct mt76_fw *)fw->data);

	FUNC12(fw);

	return ret;

err_inv_fw:
	FUNC0(dev->dev, "Invalid firmware image\n");
	FUNC12(fw);
	return -ENOENT;
}