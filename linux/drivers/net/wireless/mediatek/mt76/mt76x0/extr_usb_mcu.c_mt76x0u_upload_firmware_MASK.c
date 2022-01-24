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
struct mt76x02_fw_header {int /*<<< orphan*/  ilm_len; int /*<<< orphan*/  dlm_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCU_FW_URB_MAX_PAYLOAD ; 
 int /*<<< orphan*/  MT_MCU_COM_REG0 ; 
 int MT_MCU_DLM_OFFSET ; 
 int MT_MCU_IVB_SIZE ; 
 int /*<<< orphan*/  MT_VEND_DEV_MODE ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct mt76x02_dev *dev,
			const struct mt76x02_fw_header *hdr)
{
	u8 *fw_payload = (u8 *)(hdr + 1);
	u32 ilm_len, dlm_len;
	void *ivb;
	int err;

	ivb = FUNC3(fw_payload, MT_MCU_IVB_SIZE, GFP_KERNEL);
	if (!ivb)
		return -ENOMEM;

	ilm_len = FUNC4(hdr->ilm_len) - MT_MCU_IVB_SIZE;
	FUNC0(dev->mt76.dev, "loading FW - ILM %u + IVB %u\n",
		ilm_len, MT_MCU_IVB_SIZE);
	err = FUNC7(dev, fw_payload + MT_MCU_IVB_SIZE,
					ilm_len, MCU_FW_URB_MAX_PAYLOAD,
					MT_MCU_IVB_SIZE);
	if (err)
		goto out;

	dlm_len = FUNC4(hdr->dlm_len);
	FUNC0(dev->mt76.dev, "loading FW - DLM %u\n", dlm_len);
	err = FUNC7(dev,
					fw_payload + FUNC4(hdr->ilm_len),
					dlm_len, MCU_FW_URB_MAX_PAYLOAD,
					MT_MCU_DLM_OFFSET);
	if (err)
		goto out;

	err = FUNC6(&dev->mt76, MT_VEND_DEV_MODE,
				   USB_DIR_OUT | USB_TYPE_VENDOR,
				   0x12, 0, ivb, MT_MCU_IVB_SIZE);
	if (err < 0)
		goto out;

	if (!FUNC5(dev, MT_MCU_COM_REG0, 1, 1, 1000)) {
		FUNC1(dev->mt76.dev, "Firmware failed to start\n");
		err = -ETIMEDOUT;
		goto out;
	}

	FUNC0(dev->mt76.dev, "Firmware running!\n");

out:
	FUNC2(ivb);

	return err;
}