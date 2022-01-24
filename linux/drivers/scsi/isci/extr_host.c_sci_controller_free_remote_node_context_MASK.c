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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct isci_remote_device {int dummy; } ;
struct isci_host {int /*<<< orphan*/  available_remote_nodes; struct isci_remote_device** device_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isci_remote_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

void FUNC2(struct isci_host *ihost,
					     struct isci_remote_device *idev,
					     u16 node_id)
{
	u32 remote_node_count = FUNC0(idev);

	if (ihost->device_table[node_id] == idev) {
		ihost->device_table[node_id] = NULL;

		FUNC1(
			&ihost->available_remote_nodes, remote_node_count, node_id
			);
	}
}