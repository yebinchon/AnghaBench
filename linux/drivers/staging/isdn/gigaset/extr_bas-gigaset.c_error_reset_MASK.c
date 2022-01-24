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
struct TYPE_3__ {TYPE_2__* bas; } ;
struct cardstate {TYPE_1__ hw; int /*<<< orphan*/  bcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAS_TIMEOUT ; 
 int /*<<< orphan*/  BS_RESETTING ; 
 int /*<<< orphan*/  HD_RESET_INTERRUPT_PIPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct cardstate *cs)
{
	/* reset interrupt pipe to recover (ignore errors) */
	FUNC1(cs->hw.bas, BS_RESETTING, 0);
	if (FUNC0(cs->bcs, HD_RESET_INTERRUPT_PIPE, 0, BAS_TIMEOUT))
		/* submission failed, escalate to USB port reset */
		FUNC2(cs->hw.bas->interface);
}