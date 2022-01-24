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
struct rpmh_ctrlr {int dirty; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct rpmh_ctrlr*) ; 
 struct rpmh_ctrlr* FUNC1 (struct device const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpmh_ctrlr*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const struct device *dev)
{
	struct rpmh_ctrlr *ctrlr = FUNC1(dev);
	int ret;

	FUNC2(ctrlr);
	ctrlr->dirty = true;

	do {
		ret = FUNC3(FUNC0(ctrlr));
	} while (ret == -EAGAIN);

	return ret;
}