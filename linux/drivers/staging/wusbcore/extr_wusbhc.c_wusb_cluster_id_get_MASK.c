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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ CLUSTER_IDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wusb_cluster_id_table ; 
 int /*<<< orphan*/  wusb_cluster_ids_lock ; 

u8 FUNC4(void)
{
	u8 id;
	FUNC2(&wusb_cluster_ids_lock);
	id = FUNC0(wusb_cluster_id_table, CLUSTER_IDS);
	if (id >= CLUSTER_IDS) {
		id = 0;
		goto out;
	}
	FUNC1(id, wusb_cluster_id_table);
	id = (u8) 0xff - id;
out:
	FUNC3(&wusb_cluster_ids_lock);
	return id;

}