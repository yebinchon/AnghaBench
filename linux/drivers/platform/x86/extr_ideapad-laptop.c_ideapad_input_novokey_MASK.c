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
struct ideapad_private {TYPE_1__* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPCCMD_R_NOVO ; 
 int /*<<< orphan*/  FUNC0 (struct ideapad_private*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void FUNC2(struct ideapad_private *priv)
{
	unsigned long long_pressed;

	if (FUNC1(priv->adev->handle, VPCCMD_R_NOVO, &long_pressed))
		return;
	if (long_pressed)
		FUNC0(priv, 17);
	else
		FUNC0(priv, 16);
}