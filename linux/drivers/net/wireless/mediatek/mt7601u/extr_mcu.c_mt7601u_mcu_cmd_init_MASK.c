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
struct TYPE_2__ {int /*<<< orphan*/  resp; int /*<<< orphan*/  resp_cmpl; } ;
struct mt7601u_dev {TYPE_1__ mcu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCU_RESP_URB_SIZE ; 
 int /*<<< orphan*/  MT_EP_IN_CMD_RESP ; 
 int /*<<< orphan*/  Q_SELECT ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt7601u_complete_urb ; 
 int FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct mt7601u_dev *dev)
{
	int ret;

	ret = FUNC1(dev, Q_SELECT, 1);
	if (ret)
		return ret;

	FUNC0(&dev->mcu.resp_cmpl);
	if (FUNC2(dev, MCU_RESP_URB_SIZE, &dev->mcu.resp)) {
		FUNC3(dev, &dev->mcu.resp);
		return -ENOMEM;
	}

	ret = FUNC4(dev, USB_DIR_IN, MT_EP_IN_CMD_RESP,
				     &dev->mcu.resp, GFP_KERNEL,
				     mt7601u_complete_urb, &dev->mcu.resp_cmpl);
	if (ret) {
		FUNC3(dev, &dev->mcu.resp);
		return ret;
	}

	return 0;
}