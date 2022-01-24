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
struct TYPE_2__ {int bit_rate; } ;
struct pi433_instance {TYPE_1__ tx_cfg; struct pi433_device* device; } ;
struct pi433_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct pi433_instance* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pi433_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct pi433_instance* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minor_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pi433_idr ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct pi433_device	*device;
	struct pi433_instance	*instance;

	FUNC3(&minor_lock);
	device = FUNC0(&pi433_idr, FUNC1(inode));
	FUNC4(&minor_lock);
	if (!device) {
		FUNC5("device: minor %d unknown.\n", FUNC1(inode));
		return -ENODEV;
	}

	instance = FUNC2(sizeof(*instance), GFP_KERNEL);
	if (!instance)
		return -ENOMEM;

	/* setup instance data*/
	instance->device = device;
	instance->tx_cfg.bit_rate = 4711;
	// TODO: fill instance->tx_cfg;

	/* instance data as context */
	filp->private_data = instance;
	FUNC6(inode, filp);

	return 0;
}