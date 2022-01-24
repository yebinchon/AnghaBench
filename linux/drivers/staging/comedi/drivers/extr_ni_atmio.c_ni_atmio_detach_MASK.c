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
struct comedi_device {scalar_t__ hw_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct pnp_dev *isapnp_dev;

	FUNC1(dev);
	FUNC0(dev);

	isapnp_dev = dev->hw_dev ? FUNC3(dev->hw_dev) : NULL;
	if (isapnp_dev)
		FUNC2(isapnp_dev);
}