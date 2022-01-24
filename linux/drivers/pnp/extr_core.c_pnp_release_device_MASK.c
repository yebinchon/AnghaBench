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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dmdev)
{
	struct pnp_dev *dev = FUNC4(dmdev);

	FUNC1(dev);
	FUNC3(dev);
	FUNC2(dev);
	FUNC0(dev);
}