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
struct sas_expander_device {int level; } ;
struct domain_device {TYPE_2__* port; int /*<<< orphan*/  rphy; } ;
struct TYPE_3__ {int max_level; } ;
struct TYPE_4__ {TYPE_1__ disc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct sas_expander_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct domain_device*,int) ; 
 int FUNC3 (struct domain_device*,int) ; 

__attribute__((used)) static int FUNC4(struct domain_device *dev)
{
	int res;
	struct sas_expander_device *ex = FUNC1(dev->rphy);
	int level = ex->level+1;

	res = FUNC3(dev, -1);
	if (res)
		goto out;
	do {
		res = FUNC2(dev, level);
		FUNC0();
		level += 1;
	} while (level <= dev->port->disc.max_level);
out:
	return res;
}