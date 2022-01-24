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
struct subchannel_id {int ssid; int sch_no; } ;
struct idset {int num_id; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

void FUNC1(struct idset *set, struct subchannel_id schid)
{
	int pos = schid.ssid * set->num_id + schid.sch_no;

	FUNC0(set->bitmap, pos, set->num_id - schid.sch_no);
}