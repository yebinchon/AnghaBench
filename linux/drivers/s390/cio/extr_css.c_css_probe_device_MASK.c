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
struct subchannel_id {int dummy; } ;
struct subchannel {int /*<<< orphan*/  dev; } ;
struct schib {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct subchannel*) ; 
 int FUNC1 (struct subchannel*) ; 
 struct subchannel* FUNC2 (struct subchannel_id,struct schib*) ; 
 int FUNC3 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct subchannel_id schid, struct schib *schib)
{
	struct subchannel *sch;
	int ret;

	sch = FUNC2(schid, schib);
	if (FUNC0(sch))
		return FUNC1(sch);

	ret = FUNC3(sch);
	if (ret)
		FUNC4(&sch->dev);

	return ret;
}