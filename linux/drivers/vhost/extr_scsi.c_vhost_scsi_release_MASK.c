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
struct vhost_scsi_target {int /*<<< orphan*/  vhost_wwpn; } ;
struct TYPE_3__ {int /*<<< orphan*/  vqs; int /*<<< orphan*/  mutex; } ;
struct vhost_scsi {TYPE_1__ dev; int /*<<< orphan*/  vs_vhost_wwpn; } ;
struct inode {int dummy; } ;
struct file {struct vhost_scsi* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_scsi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_scsi*,struct vhost_scsi_target*) ; 
 int /*<<< orphan*/  FUNC8 (struct vhost_scsi*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *f)
{
	struct vhost_scsi *vs = f->private_data;
	struct vhost_scsi_target t;

	FUNC3(&vs->dev.mutex);
	FUNC2(t.vhost_wwpn, vs->vs_vhost_wwpn, sizeof(t.vhost_wwpn));
	FUNC4(&vs->dev.mutex);
	FUNC7(vs, &t);
	FUNC6(&vs->dev);
	FUNC5(&vs->dev);
	/* Jobs can re-queue themselves in evt kick handler. Do extra flush. */
	FUNC8(vs);
	FUNC0(vs->dev.vqs);
	FUNC1(vs);
	return 0;
}