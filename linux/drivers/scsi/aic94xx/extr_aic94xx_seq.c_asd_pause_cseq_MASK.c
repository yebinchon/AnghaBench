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
typedef  int u32 ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CARP2CTL ; 
 int EPAUSE ; 
 int PAUSED ; 
 int /*<<< orphan*/  PAUSE_DELAY ; 
 int PAUSE_TRIES ; 
 int FUNC1 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct asd_ha_struct *asd_ha)
{
	int	count = PAUSE_TRIES;
	u32	arp2ctl;

	arp2ctl = FUNC1(asd_ha, CARP2CTL);
	if (arp2ctl & PAUSED)
		return 0;

	FUNC2(asd_ha, CARP2CTL, arp2ctl | EPAUSE);
	do {
		arp2ctl = FUNC1(asd_ha, CARP2CTL);
		if (arp2ctl & PAUSED)
			return 0;
		FUNC3(PAUSE_DELAY);
	} while (--count > 0);

	FUNC0("couldn't pause CSEQ\n");
	return -1;
}