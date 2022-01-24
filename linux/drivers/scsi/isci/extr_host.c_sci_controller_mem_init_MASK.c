#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  physical_address; } ;
struct TYPE_8__ {int /*<<< orphan*/  physical_address; } ;
struct TYPE_10__ {TYPE_3__ address_table; TYPE_2__ headers; } ;
struct isci_host {TYPE_6__* scu_registers; TYPE_4__ uf_control; TYPE_1__* smu_registers; int /*<<< orphan*/  tc_dma; int /*<<< orphan*/  rnc_dma; int /*<<< orphan*/  cq_dma; } ;
struct TYPE_11__ {int /*<<< orphan*/  uf_address_table_upper; int /*<<< orphan*/  uf_address_table_lower; int /*<<< orphan*/  uf_header_base_address_upper; int /*<<< orphan*/  uf_header_base_address_lower; } ;
struct TYPE_12__ {TYPE_5__ sdma; } ;
struct TYPE_7__ {int /*<<< orphan*/  host_task_table_upper; int /*<<< orphan*/  host_task_table_lower; int /*<<< orphan*/  remote_node_context_upper; int /*<<< orphan*/  remote_node_context_lower; int /*<<< orphan*/  completion_queue_upper; int /*<<< orphan*/  completion_queue_lower; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct isci_host *ihost)
{
	int err = FUNC1(ihost);

	if (err)
		return err;

	FUNC4(FUNC0(ihost->cq_dma), &ihost->smu_registers->completion_queue_lower);
	FUNC4(FUNC3(ihost->cq_dma), &ihost->smu_registers->completion_queue_upper);

	FUNC4(FUNC0(ihost->rnc_dma), &ihost->smu_registers->remote_node_context_lower);
	FUNC4(FUNC3(ihost->rnc_dma), &ihost->smu_registers->remote_node_context_upper);

	FUNC4(FUNC0(ihost->tc_dma), &ihost->smu_registers->host_task_table_lower);
	FUNC4(FUNC3(ihost->tc_dma), &ihost->smu_registers->host_task_table_upper);

	FUNC2(ihost);

	/*
	 * Inform the silicon as to the location of the UF headers and
	 * address table.
	 */
	FUNC4(FUNC0(ihost->uf_control.headers.physical_address),
		&ihost->scu_registers->sdma.uf_header_base_address_lower);
	FUNC4(FUNC3(ihost->uf_control.headers.physical_address),
		&ihost->scu_registers->sdma.uf_header_base_address_upper);

	FUNC4(FUNC0(ihost->uf_control.address_table.physical_address),
		&ihost->scu_registers->sdma.uf_address_table_lower);
	FUNC4(FUNC3(ihost->uf_control.address_table.physical_address),
		&ihost->scu_registers->sdma.uf_address_table_upper);

	return 0;
}