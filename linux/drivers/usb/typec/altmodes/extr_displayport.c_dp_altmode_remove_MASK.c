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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct typec_altmode {TYPE_1__ dev; } ;
struct dp_altmode {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dp_altmode_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dp_altmode* FUNC2 (struct typec_altmode*) ; 

void FUNC3(struct typec_altmode *alt)
{
	struct dp_altmode *dp = FUNC2(alt);

	FUNC1(&alt->dev.kobj, &dp_altmode_group);
	FUNC0(&dp->work);
}