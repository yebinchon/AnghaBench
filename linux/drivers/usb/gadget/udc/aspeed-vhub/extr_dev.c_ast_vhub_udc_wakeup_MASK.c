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
struct usb_gadget {int dummy; } ;
struct ast_vhub_dev {TYPE_1__* vhub; int /*<<< orphan*/  wakeup_en; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_dev*,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ast_vhub_dev* FUNC4 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget* gadget)
{
	struct ast_vhub_dev *d = FUNC4(gadget);
	unsigned long flags;
	int rc = -EINVAL;

	FUNC2(&d->vhub->lock, flags);
	if (!d->wakeup_en)
		goto err;

	FUNC0(d, "Device initiated wakeup\n");

	/* Wakeup the host */
	FUNC1(d->vhub);
	rc = 0;
 err:
	FUNC3(&d->vhub->lock, flags);
	return rc;
}