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
struct TYPE_2__ {int /*<<< orphan*/ * trc_root; void* stats_root; } ;

/* Variables and functions */
 void* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* snic_glob ; 

void FUNC1(void)
{
	snic_glob->trc_root = FUNC0("snic", NULL);

	snic_glob->stats_root = FUNC0("statistics",
						   snic_glob->trc_root);
}