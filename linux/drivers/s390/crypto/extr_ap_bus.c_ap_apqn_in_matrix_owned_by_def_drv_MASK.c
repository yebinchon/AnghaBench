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
struct TYPE_2__ {unsigned long* apm; unsigned long* aqm; } ;

/* Variables and functions */
 int AP_DEVICES ; 
 int AP_DOMAINS ; 
 TYPE_1__ ap_perms ; 
 int /*<<< orphan*/  ap_perms_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,unsigned long*) ; 

int FUNC3(unsigned long *apm,
				       unsigned long *aqm)
{
	int card, queue, rc = 0;

	FUNC0(&ap_perms_mutex);

	for (card = 0; !rc && card < AP_DEVICES; card++)
		if (FUNC2(card, apm) &&
		    FUNC2(card, ap_perms.apm))
			for (queue = 0; !rc && queue < AP_DOMAINS; queue++)
				if (FUNC2(queue, aqm) &&
				    FUNC2(queue, ap_perms.aqm))
					rc = 1;

	FUNC1(&ap_perms_mutex);

	return rc;
}