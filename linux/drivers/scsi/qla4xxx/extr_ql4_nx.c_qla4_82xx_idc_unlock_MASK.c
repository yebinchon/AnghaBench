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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_SEM5_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 

void FUNC2(struct scsi_qla_host *ha)
{
	FUNC1(ha, FUNC0(PCIE_SEM5_UNLOCK));
}