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
struct brcmstb_waketmr {unsigned int rate; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ BRCMSTB_WKTMR_ALARM ; 
 scalar_t__ BRCMSTB_WKTMR_PRESCALER ; 
 int /*<<< orphan*/  FUNC0 (struct brcmstb_waketmr*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct brcmstb_waketmr *timer,
				      unsigned int secs)
{
	FUNC0(timer);

	/* Make sure we are actually counting in seconds */
	FUNC1(timer->rate, timer->base + BRCMSTB_WKTMR_PRESCALER);

	FUNC1(secs + 1, timer->base + BRCMSTB_WKTMR_ALARM);
}