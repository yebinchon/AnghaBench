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

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct subchannel*,int) ; 
 int FUNC1 (struct subchannel_id,int) ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel_id) ; 
 struct subchannel* FUNC3 (struct subchannel_id) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct subchannel_id schid, int slow)
{
	struct subchannel *sch;
	int ret;

	sch = FUNC3(schid);
	if (sch) {
		ret = FUNC0(sch, slow);
		FUNC4(&sch->dev);
	} else
		ret = FUNC1(schid, slow);
	if (ret == -EAGAIN)
		FUNC2(schid);
}