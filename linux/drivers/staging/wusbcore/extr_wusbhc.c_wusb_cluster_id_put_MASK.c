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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CLUSTER_IDS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wusb_cluster_id_table ; 
 int /*<<< orphan*/  wusb_cluster_ids_lock ; 

void FUNC6(u8 id)
{
	id = 0xff - id;
	FUNC0(id >= CLUSTER_IDS);
	FUNC3(&wusb_cluster_ids_lock);
	FUNC1(!FUNC5(id, wusb_cluster_id_table));
	FUNC2(id, wusb_cluster_id_table);
	FUNC4(&wusb_cluster_ids_lock);
}