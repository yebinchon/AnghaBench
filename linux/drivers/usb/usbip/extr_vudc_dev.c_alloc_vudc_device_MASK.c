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
struct vudc_device {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  GADGET_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vudc_device*) ; 
 struct vudc_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

struct vudc_device *FUNC4(int devid)
{
	struct vudc_device *udc_dev = NULL;

	udc_dev = FUNC2(sizeof(*udc_dev), GFP_KERNEL);
	if (!udc_dev)
		goto out;

	FUNC0(&udc_dev->dev_entry);

	udc_dev->pdev = FUNC3(GADGET_NAME, devid);
	if (!udc_dev->pdev) {
		FUNC1(udc_dev);
		udc_dev = NULL;
	}

out:
	return udc_dev;
}