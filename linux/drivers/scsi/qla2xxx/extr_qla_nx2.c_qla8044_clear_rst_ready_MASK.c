#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {TYPE_1__* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_7__ {int portnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLA8044_CRB_DRV_STATE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(scsi_qla_host_t *vha)
{
	uint32_t drv_state;

	drv_state = FUNC1(vha, QLA8044_CRB_DRV_STATE_INDEX);

	/*
	 * For ISP8044, drv_active register has 1 bit per function,
	 * shift 1 by func_num to set a bit for the function.
	 * For ISP82xx, drv_active has 4 bits per function
	 */
	drv_state &= ~(1 << vha->hw->portnum);

	FUNC0(ql_dbg_p3p, vha, 0xb13d,
	    "drv_state: 0x%08x\n", drv_state);
	FUNC2(vha, QLA8044_CRB_DRV_STATE_INDEX, drv_state);
}