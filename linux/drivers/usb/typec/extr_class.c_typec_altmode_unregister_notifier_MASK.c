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
struct typec_altmode {int /*<<< orphan*/  dev; } ;
struct notifier_block {int dummy; } ;
struct altmode {int /*<<< orphan*/  nh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct altmode* FUNC2 (struct typec_altmode*) ; 

void FUNC3(struct typec_altmode *adev,
				       struct notifier_block *nb)
{
	struct altmode *altmode = FUNC2(adev);

	FUNC0(&altmode->nh, nb);
	FUNC1(&adev->dev);
}