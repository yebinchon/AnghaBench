#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dlfb_data {TYPE_1__* udev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dlfb_data *dlfb, char *edid, int len)
{
	int i, ret;
	char *rbuf;

	rbuf = FUNC2(2, GFP_KERNEL);
	if (!rbuf)
		return 0;

	for (i = 0; i < len; i++) {
		ret = FUNC3(dlfb->udev,
				      FUNC4(dlfb->udev, 0), 0x02,
				      (0x80 | (0x02 << 5)), i << 8, 0xA1,
				      rbuf, 2, USB_CTRL_GET_TIMEOUT);
		if (ret < 2) {
			FUNC0(&dlfb->udev->dev,
				"Read EDID byte %d failed: %d\n", i, ret);
			i--;
			break;
		}
		edid[i] = rbuf[1];
	}

	FUNC1(rbuf);

	return i;
}