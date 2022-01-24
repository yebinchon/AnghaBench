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
struct subchannel {int /*<<< orphan*/  dev; } ;
struct chsc_private {TYPE_1__* request; } ;
struct TYPE_2__ {int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct chsc_private* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct chsc_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct subchannel *sch)
{
	struct chsc_private *private;

	FUNC0(sch);
	private = FUNC2(&sch->dev);
	FUNC3(&sch->dev, NULL);
	if (private->request) {
		FUNC1(&private->request->completion);
		FUNC5(&sch->dev);
	}
	FUNC4(private);
	return 0;
}