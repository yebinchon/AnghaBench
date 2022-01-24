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
struct vhost_virtqueue {int /*<<< orphan*/  handle_kick; } ;
struct vhost_dev {int dummy; } ;
struct vhost_test {struct vhost_virtqueue* vqs; struct vhost_dev dev; } ;
struct inode {int dummy; } ;
struct file {struct vhost_test* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UIO_MAXIOV ; 
 int /*<<< orphan*/  VHOST_TEST_PKT_WEIGHT ; 
 size_t VHOST_TEST_VQ ; 
 int /*<<< orphan*/  VHOST_TEST_VQ_MAX ; 
 int /*<<< orphan*/  VHOST_TEST_WEIGHT ; 
 int /*<<< orphan*/  handle_vq_kick ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_test*) ; 
 struct vhost_test* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct vhost_virtqueue** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_dev*,struct vhost_virtqueue**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *f)
{
	struct vhost_test *n = FUNC1(sizeof *n, GFP_KERNEL);
	struct vhost_dev *dev;
	struct vhost_virtqueue **vqs;

	if (!n)
		return -ENOMEM;
	vqs = FUNC2(VHOST_TEST_VQ_MAX, sizeof(*vqs), GFP_KERNEL);
	if (!vqs) {
		FUNC0(n);
		return -ENOMEM;
	}

	dev = &n->dev;
	vqs[VHOST_TEST_VQ] = &n->vqs[VHOST_TEST_VQ];
	n->vqs[VHOST_TEST_VQ].handle_kick = handle_vq_kick;
	FUNC3(dev, vqs, VHOST_TEST_VQ_MAX, UIO_MAXIOV,
		       VHOST_TEST_PKT_WEIGHT, VHOST_TEST_WEIGHT);

	f->private_data = n;

	return 0;
}