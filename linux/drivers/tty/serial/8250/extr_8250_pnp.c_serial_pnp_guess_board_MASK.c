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
struct pnp_dev {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*) ; 

__attribute__((used)) static int FUNC3(struct pnp_dev *dev)
{
	if (!(FUNC0(FUNC2(dev)) ||
	    (dev->card && FUNC0(dev->card->name))))
		return -ENODEV;

	if (FUNC1(dev))
		return 0;

	return -ENODEV;
}