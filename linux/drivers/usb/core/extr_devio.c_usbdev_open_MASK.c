#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_device {scalar_t__ state; int /*<<< orphan*/  dev; int /*<<< orphan*/  filelist; } ;
struct usb_dev_state {int interface_allowed_mask; int /*<<< orphan*/  list; int /*<<< orphan*/  cred; int /*<<< orphan*/  disc_pid; int /*<<< orphan*/  wait_for_resume; int /*<<< orphan*/  wait; int /*<<< orphan*/  memory_list; int /*<<< orphan*/  async_completed; int /*<<< orphan*/  async_pending; int /*<<< orphan*/  lock; struct file* file; struct usb_device* dev; } ;
struct inode {int /*<<< orphan*/  i_rdev; } ;
struct file {struct usb_dev_state* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_DEVICE_MAJOR ; 
 scalar_t__ USB_STATE_NOTATTACHED ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_dev_state*) ; 
 struct usb_dev_state* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*) ; 
 struct usb_device* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct inode *inode, struct file *file)
{
	struct usb_device *dev = NULL;
	struct usb_dev_state *ps;
	int ret;

	ret = -ENOMEM;
	ps = FUNC6(sizeof(struct usb_dev_state), GFP_KERNEL);
	if (!ps)
		goto out_free_ps;

	ret = -ENODEV;

	/* usbdev device-node */
	if (FUNC3(inode) == USB_DEVICE_MAJOR)
		dev = FUNC17(inode->i_rdev);
	if (!dev)
		goto out_free_ps;

	FUNC14(dev);
	if (dev->state == USB_STATE_NOTATTACHED)
		goto out_unlock_device;

	ret = FUNC13(dev);
	if (ret)
		goto out_unlock_device;

	ps->dev = dev;
	ps->file = file;
	ps->interface_allowed_mask = 0xFFFFFFFF; /* 32 bits */
	FUNC10(&ps->lock);
	FUNC0(&ps->list);
	FUNC0(&ps->async_pending);
	FUNC0(&ps->async_completed);
	FUNC0(&ps->memory_list);
	FUNC4(&ps->wait);
	FUNC4(&ps->wait_for_resume);
	ps->disc_pid = FUNC2(FUNC11(current));
	ps->cred = FUNC1();
	FUNC8();

	/* Can't race with resume; the device is already active */
	FUNC7(&ps->list, &dev->filelist);
	file->private_data = ps;
	FUNC16(dev);
	FUNC9(&dev->dev, "opened by process %d: %s\n", FUNC12(current),
			current->comm);
	return ret;

 out_unlock_device:
	FUNC16(dev);
	FUNC15(dev);
 out_free_ps:
	FUNC5(ps);
	return ret;
}