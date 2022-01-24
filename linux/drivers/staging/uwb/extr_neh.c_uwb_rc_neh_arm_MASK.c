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
struct uwb_rc_neh {int /*<<< orphan*/  timer; scalar_t__ context; } ;
struct uwb_rc {int /*<<< orphan*/  neh_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_RC_CMD_TIMEOUT_MS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
	unsigned long flags;

	FUNC2(&rc->neh_lock, flags);
	if (neh->context)
		FUNC0(&neh->timer,
			  jiffies + FUNC1(UWB_RC_CMD_TIMEOUT_MS));
	FUNC3(&rc->neh_lock, flags);
}