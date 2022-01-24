#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {TYPE_1__* hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  generation_tick; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct scsi_qla_host *vha, int *dest)
{
	scsi_qla_host_t *base_vha = FUNC1(vha->hw->pdev);
	*dest = FUNC0(&base_vha->generation_tick);
	/* memory barrier */
	FUNC2();
}