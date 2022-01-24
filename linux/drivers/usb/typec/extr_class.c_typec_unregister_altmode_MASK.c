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
struct typec_altmode {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mux; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct typec_altmode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct typec_altmode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct typec_altmode *adev)
{
	if (FUNC0(adev))
		return;
	FUNC3(FUNC2(adev)->mux);
	FUNC1(&adev->dev);
}