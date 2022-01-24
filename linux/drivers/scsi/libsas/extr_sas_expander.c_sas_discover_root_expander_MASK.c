#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sas_expander_device {int /*<<< orphan*/  level; } ;
struct domain_device {int /*<<< orphan*/  rphy; TYPE_2__* port; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_level; } ;
struct TYPE_4__ {TYPE_1__ disc; } ;

/* Variables and functions */
 struct sas_expander_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct domain_device *dev)
{
	int res;
	struct sas_expander_device *ex = FUNC0(dev->rphy);

	res = FUNC3(dev->rphy);
	if (res)
		goto out_err;

	ex->level = dev->port->disc.max_level; /* 0 */
	res = FUNC1(dev);
	if (res)
		goto out_err2;

	FUNC2(dev->port);

	return res;

out_err2:
	FUNC4(dev->rphy);
out_err:
	return res;
}