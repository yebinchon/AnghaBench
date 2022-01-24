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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dlm_len; int /*<<< orphan*/  ilm_len; } ;
struct mt76_fw {scalar_t__ ilm; TYPE_1__ hdr; int /*<<< orphan*/  ivb; } ;
struct mt7601u_dma_buf {int dummy; } ;
struct mt7601u_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCU_FW_URB_SIZE ; 
 int MT_MCU_DLM_OFFSET ; 
 int /*<<< orphan*/  MT_VEND_DEV_MODE ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct mt7601u_dev*,struct mt7601u_dma_buf*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC7 (struct mt7601u_dev*,int /*<<< orphan*/ ,struct mt7601u_dma_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7601u_dev*,struct mt7601u_dma_buf*) ; 
 int FUNC9 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int
FUNC10(struct mt7601u_dev *dev, const struct mt76_fw *fw)
{
	struct mt7601u_dma_buf dma_buf;
	void *ivb;
	u32 ilm_len, dlm_len;
	int i, ret;

	ivb = FUNC3(fw->ivb, sizeof(fw->ivb), GFP_KERNEL);
	if (!ivb)
		return -ENOMEM;
	if (FUNC7(dev, MCU_FW_URB_SIZE, &dma_buf)) {
		ret = -ENOMEM;
		goto error;
	}

	ilm_len = FUNC4(fw->hdr.ilm_len) - sizeof(fw->ivb);
	FUNC0(dev->dev, "loading FW - ILM %u + IVB %zu\n",
		ilm_len, sizeof(fw->ivb));
	ret = FUNC6(dev, &dma_buf, fw->ilm, ilm_len, sizeof(fw->ivb));
	if (ret)
		goto error;

	dlm_len = FUNC4(fw->hdr.dlm_len);
	FUNC0(dev->dev, "loading FW - DLM %u\n", dlm_len);
	ret = FUNC6(dev, &dma_buf, fw->ilm + ilm_len,
			     dlm_len, MT_MCU_DLM_OFFSET);
	if (ret)
		goto error;

	ret = FUNC9(dev, MT_VEND_DEV_MODE, USB_DIR_OUT,
				     0x12, 0, ivb, sizeof(fw->ivb));
	if (ret < 0)
		goto error;
	ret = 0;

	for (i = 100; i && !FUNC1(dev); i--)
		FUNC5(10);
	if (!i) {
		ret = -ETIMEDOUT;
		goto error;
	}

	FUNC0(dev->dev, "Firmware running!\n");
error:
	FUNC2(ivb);
	FUNC8(dev, &dma_buf);

	return ret;
}