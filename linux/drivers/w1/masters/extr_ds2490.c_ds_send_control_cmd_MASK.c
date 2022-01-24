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
typedef  int /*<<< orphan*/  u16 ;
struct ds_device {int /*<<< orphan*/ * ep; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_CMD ; 
 size_t EP_CONTROL ; 
 int /*<<< orphan*/  VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ds_device *dev, u16 value, u16 index)
{
	int err;

	err = FUNC1(dev->udev, FUNC2(dev->udev, dev->ep[EP_CONTROL]),
			CONTROL_CMD, VENDOR, value, index, NULL, 0, 1000);
	if (err < 0) {
		FUNC0("Failed to send command control message %x.%x: err=%d.\n",
				value, index, err);
		return err;
	}

	return err;
}