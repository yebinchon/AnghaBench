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
struct uio_info {struct qedi_uio_dev* priv; } ;
struct qedi_uio_dev {int uio_dev; struct qedi_ctx* qedi; } ;
struct qedi_ctx {int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  UIO_DEV_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct qedi_uio_dev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct uio_info *uinfo, struct inode *inode)
{
	struct qedi_uio_dev *udev = uinfo->priv;
	struct qedi_ctx *qedi = udev->qedi;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	if (udev->uio_dev != -1)
		return -EBUSY;

	FUNC3();
	udev->uio_dev = FUNC1(inode);
	FUNC2(udev);
	FUNC5(UIO_DEV_OPENED, &qedi->flags);
	FUNC4();

	return 0;
}