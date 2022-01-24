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
struct kpc_dma_device {int /*<<< orphan*/  open_count; } ;
struct inode {int dummy; } ;
struct file {struct dev_private_data* private_data; } ;
struct dev_private_data {struct kpc_dma_device* ldev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct kpc_dma_device* FUNC3 (int /*<<< orphan*/ ) ; 
 struct dev_private_data* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int  FUNC5(struct inode *inode, struct file *filp)
{
	struct dev_private_data *priv;
	struct kpc_dma_device *ldev = FUNC3(FUNC2(inode));

	if (!ldev)
		return -ENODEV;

	if (!FUNC0(&ldev->open_count)) {
		FUNC1(&ldev->open_count);
		return -EBUSY; /* already open */
	}

	priv = FUNC4(sizeof(struct dev_private_data), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->ldev = ldev;
	filp->private_data = priv;

	return 0;
}