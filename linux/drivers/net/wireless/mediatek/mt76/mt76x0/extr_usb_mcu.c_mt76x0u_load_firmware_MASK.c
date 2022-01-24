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
struct mt76x02_fw_header {int /*<<< orphan*/  ilm_len; int /*<<< orphan*/  build_time; int /*<<< orphan*/  build_ver; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  dlm_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MT_FCE_PDMA_GLOBAL_CONF ; 
 int MT_FCE_PSE_CTRL ; 
 int MT_FCE_SKIP_FS ; 
 int MT_MCU_IVB_SIZE ; 
 int MT_TX_CPU_FROM_FCE_BASE_PTR ; 
 int MT_TX_CPU_FROM_FCE_MAX_COUNT ; 
 int MT_USB_DMA_CFG ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_RX_BULK_AGG_TOUT ; 
 int MT_USB_DMA_CFG_RX_BULK_EN ; 
 int MT_USB_DMA_CFG_TX_BULK_EN ; 
 int MT_USB_DMA_CFG_UDMA_TX_WL_DROP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC9 (struct mt76x02_dev*) ; 
 int FUNC10 (struct mt76x02_dev*,struct firmware const**) ; 
 int FUNC11 (struct mt76x02_dev*,struct mt76x02_fw_header const*) ; 
 int /*<<< orphan*/  FUNC12 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct mt76x02_dev *dev)
{
	const struct firmware *fw;
	const struct mt76x02_fw_header *hdr;
	int len, ret;
	u32 val;

	FUNC7(dev, MT_USB_DMA_CFG, (MT_USB_DMA_CFG_RX_BULK_EN |
				      MT_USB_DMA_CFG_TX_BULK_EN));

	if (FUNC9(dev))
		return 0;

	ret = FUNC10(dev, &fw);
	if (ret)
		return ret;

	if (!fw || !fw->data || fw->size < sizeof(*hdr))
		goto err_inv_fw;

	hdr = (const struct mt76x02_fw_header *)fw->data;

	if (FUNC4(hdr->ilm_len) <= MT_MCU_IVB_SIZE)
		goto err_inv_fw;

	len = sizeof(*hdr);
	len += FUNC4(hdr->ilm_len);
	len += FUNC4(hdr->dlm_len);

	if (fw->size != len)
		goto err_inv_fw;

	val = FUNC3(hdr->fw_ver);
	FUNC1(dev->mt76.dev,
		"Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\n",
		(val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf,
		FUNC3(hdr->build_ver), hdr->build_time);

	len = FUNC4(hdr->ilm_len);

	FUNC7(dev, 0x1004, 0x2c);

	FUNC6(dev, MT_USB_DMA_CFG,
		 (MT_USB_DMA_CFG_RX_BULK_EN | MT_USB_DMA_CFG_TX_BULK_EN) |
		 FUNC0(MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, 0x20));
	FUNC8(dev);
	FUNC13(5000, 6000);

	FUNC7(dev, MT_FCE_PSE_CTRL, 1);

	/* FCE tx_fs_base_ptr */
	FUNC7(dev, MT_TX_CPU_FROM_FCE_BASE_PTR, 0x400230);
	/* FCE tx_fs_max_cnt */
	FUNC7(dev, MT_TX_CPU_FROM_FCE_MAX_COUNT, 1);
	/* FCE pdma enable */
	FUNC7(dev, MT_FCE_PDMA_GLOBAL_CONF, 0x44);
	/* FCE skip_fs_en */
	FUNC7(dev, MT_FCE_SKIP_FS, 3);

	val = FUNC5(dev, MT_USB_DMA_CFG);
	val |= MT_USB_DMA_CFG_UDMA_TX_WL_DROP;
	FUNC7(dev, MT_USB_DMA_CFG, val);
	val &= ~MT_USB_DMA_CFG_UDMA_TX_WL_DROP;
	FUNC7(dev, MT_USB_DMA_CFG, val);

	ret = FUNC11(dev, hdr);
	FUNC12(fw);

	FUNC7(dev, MT_FCE_PSE_CTRL, 1);

	return ret;

err_inv_fw:
	FUNC2(dev->mt76.dev, "Invalid firmware image\n");
	FUNC12(fw);
	return -ENOENT;
}