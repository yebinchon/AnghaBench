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
struct riowd {int /*<<< orphan*/  regs; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct riowd* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct riowd*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct riowd* riowd_device ; 
 int /*<<< orphan*/  riowd_miscdev ; 
 int /*<<< orphan*/  riowd_timeout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *op)
{
	struct riowd *p;
	int err = -EINVAL;

	if (riowd_device)
		goto out;

	err = -ENOMEM;
	p = FUNC0(&op->dev, sizeof(*p), GFP_KERNEL);
	if (!p)
		goto out;

	FUNC7(&p->lock);

	p->regs = FUNC2(&op->resource[0], 0, 2, DRIVER_NAME);
	if (!p->regs) {
		FUNC5("Cannot map registers\n");
		goto out;
	}
	/* Make miscdev useable right away */
	riowd_device = p;

	err = FUNC1(&riowd_miscdev);
	if (err) {
		FUNC5("Cannot register watchdog misc device\n");
		goto out_iounmap;
	}

	FUNC6("Hardware watchdog [%i minutes], regs at %p\n",
		riowd_timeout, p->regs);

	FUNC4(op, p);
	return 0;

out_iounmap:
	riowd_device = NULL;
	FUNC3(&op->resource[0], p->regs, 2);

out:
	return err;
}