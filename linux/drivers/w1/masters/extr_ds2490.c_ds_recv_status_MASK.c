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
struct ds_status {int dummy; } ;
struct ds_device {int /*<<< orphan*/  st_buf; int /*<<< orphan*/ * ep; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 size_t EP_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ds_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ds_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ds_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ds_device *dev, struct ds_status *st,
			  bool dump)
{
	int count, err;

	if (st)
		FUNC2(st, 0, sizeof(*st));

	count = 0;
	err = FUNC4(dev->udev,
				FUNC5(dev->udev,
					       dev->ep[EP_STATUS]),
				dev->st_buf, sizeof(dev->st_buf),
				&count, 1000);
	if (err < 0) {
		FUNC3("Failed to read 1-wire data from 0x%x: err=%d.\n",
		       dev->ep[EP_STATUS], err);
		return err;
	}

	if (dump)
		FUNC0(dev, dev->st_buf, count);

	if (st && count >= sizeof(*st))
		FUNC1(st, dev->st_buf, sizeof(*st));

	return count;
}