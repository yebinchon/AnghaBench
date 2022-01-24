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
struct usb_device {int dummy; } ;
struct usb_dev_state {int /*<<< orphan*/  cred; int /*<<< orphan*/  disc_pid; int /*<<< orphan*/  suspend_allowed; scalar_t__ ifclaimed; int /*<<< orphan*/  list; struct usb_device* dev; } ;
struct inode {int dummy; } ;
struct file {struct usb_dev_state* private_data; } ;
struct async {int dummy; } ;

/* Variables and functions */
 struct async* FUNC0 (struct usb_dev_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_dev_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct async*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_dev_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_dev_state*,unsigned int) ; 
 scalar_t__ FUNC10 (unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,struct usb_dev_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  usbfs_mutex ; 

__attribute__((used)) static int FUNC16(struct inode *inode, struct file *file)
{
	struct usb_dev_state *ps = file->private_data;
	struct usb_device *dev = ps->dev;
	unsigned int ifnum;
	struct async *as;

	FUNC13(dev);
	FUNC12(dev, ps);

	/* Protect against simultaneous resume */
	FUNC5(&usbfs_mutex);
	FUNC4(&ps->list);
	FUNC6(&usbfs_mutex);

	for (ifnum = 0; ps->ifclaimed && ifnum < 8*sizeof(ps->ifclaimed);
			ifnum++) {
		if (FUNC10(ifnum, &ps->ifclaimed))
			FUNC9(ps, ifnum);
	}
	FUNC1(ps);
	if (!ps->suspend_allowed)
		FUNC11(dev);
	FUNC15(dev);
	FUNC14(dev);
	FUNC8(ps->disc_pid);
	FUNC7(ps->cred);

	as = FUNC0(ps);
	while (as) {
		FUNC2(as);
		as = FUNC0(ps);
	}

	FUNC3(ps);
	return 0;
}