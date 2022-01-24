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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct typec_altmode {TYPE_1__ dev; } ;
struct altmode {int /*<<< orphan*/  nh; struct altmode* partner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct altmode* FUNC2 (struct typec_altmode*) ; 
 int FUNC3 (struct altmode*,int) ; 

__attribute__((used)) static int FUNC4(struct typec_altmode *adev, int state)
{
	bool is_port = FUNC1(adev->dev.parent);
	struct altmode *port_altmode;
	int ret;

	port_altmode = is_port ? FUNC2(adev) : FUNC2(adev)->partner;

	ret = FUNC3(port_altmode, state);
	if (ret)
		return ret;

	FUNC0(&port_altmode->nh, state, NULL);

	return 0;
}