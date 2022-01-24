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
struct pnp_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*,int /*<<< orphan*/ ) ; 

int FUNC6(struct pnp_dev *dev)
{
	/*
	 * I don't think this is very reliable because pnp_disable_dev()
	 * only clears out auto-assigned resources.
	 */
	if (!FUNC5(dev, 0) && FUNC4(dev, 0) <= 1 &&
	    !FUNC3(dev, 0) && FUNC2(dev, 0) <= 1 &&
	    FUNC1(dev, 0) == -1 && FUNC0(dev, 0) == -1)
		return 0;
	else
		return 1;
}