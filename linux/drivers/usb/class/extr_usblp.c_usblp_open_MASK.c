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
struct usblp {int used; int wcomplete; scalar_t__ rcomplete; scalar_t__ wstatus; int /*<<< orphan*/  present; int /*<<< orphan*/  dev; } ;
struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct usblp* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct usblp*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 struct usb_interface* FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct usblp* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  usblp_driver ; 
 int /*<<< orphan*/  usblp_mutex ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	int minor = FUNC1(inode);
	struct usblp *usblp;
	struct usb_interface *intf;
	int retval;

	if (minor < 0)
		return -ENODEV;

	FUNC2(&usblp_mutex);

	retval = -ENODEV;
	intf = FUNC6(&usblp_driver, minor);
	if (!intf)
		goto out;
	usblp = FUNC7(intf);
	if (!usblp || !usblp->dev || !usblp->present)
		goto out;

	retval = -EBUSY;
	if (usblp->used)
		goto out;

	/*
	 * We do not implement LP_ABORTOPEN/LPABORTOPEN for two reasons:
	 *  - We do not want persistent state which close(2) does not clear
	 *  - It is not used anyway, according to CUPS people
	 */

	retval = FUNC4(intf);
	if (retval < 0)
		goto out;
	usblp->used = 1;
	file->private_data = usblp;

	usblp->wcomplete = 1; /* we begin writeable */
	usblp->wstatus = 0;
	usblp->rcomplete = 0;

	if (FUNC0(usblp) < 0) {
		FUNC5(intf);
		usblp->used = 0;
		file->private_data = NULL;
		retval = -EIO;
	}
out:
	FUNC3(&usblp_mutex);
	return retval;
}