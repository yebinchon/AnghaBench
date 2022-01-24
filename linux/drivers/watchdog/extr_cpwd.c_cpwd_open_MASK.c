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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cpwd {int initialized; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
#define  WD0_MINOR 130 
#define  WD1_MINOR 129 
#define  WD2_MINOR 128 
 struct cpwd* cpwd_device ; 
 int /*<<< orphan*/  cpwd_interrupt ; 
 int /*<<< orphan*/  cpwd_mutex ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cpwd*) ; 
 int FUNC5 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *f)
{
	struct cpwd *p = cpwd_device;

	FUNC1(&cpwd_mutex);
	switch (FUNC0(inode)) {
	case WD0_MINOR:
	case WD1_MINOR:
	case WD2_MINOR:
		break;

	default:
		FUNC2(&cpwd_mutex);
		return -ENODEV;
	}

	/* Register IRQ on first open of device */
	if (!p->initialized) {
		if (FUNC4(p->irq, &cpwd_interrupt,
				IRQF_SHARED, DRIVER_NAME, p)) {
			FUNC3("Cannot register IRQ %d\n", p->irq);
			FUNC2(&cpwd_mutex);
			return -EBUSY;
		}
		p->initialized = true;
	}

	FUNC2(&cpwd_mutex);

	return FUNC5(inode, f);
}