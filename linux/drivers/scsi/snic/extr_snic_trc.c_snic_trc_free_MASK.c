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
struct snic_trc {int enable; int /*<<< orphan*/ * buf; } ;
struct TYPE_2__ {struct snic_trc trc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* snic_glob ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	struct snic_trc *trc = &snic_glob->trc;

	trc->enable = false;
	FUNC1();

	if (trc->buf) {
		FUNC2(trc->buf);
		trc->buf = NULL;
	}

	FUNC0("Trace Facility Disabled.\n");
}