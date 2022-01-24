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
struct omapfb_notifier_block {size_t plane_idx; int /*<<< orphan*/  nb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * omapfb_client_list ; 

int FUNC1(struct omapfb_notifier_block *omapfb_nb)
{
	return FUNC0(
		&omapfb_client_list[omapfb_nb->plane_idx], &omapfb_nb->nb);
}