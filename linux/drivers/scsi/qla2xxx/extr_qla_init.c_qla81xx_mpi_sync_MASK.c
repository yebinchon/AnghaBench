#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_7__ {TYPE_6__* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;
struct TYPE_8__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int MPS_MASK ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC3 (TYPE_1__*,int,int*) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int
FUNC5(scsi_qla_host_t *vha)
{
#define MPS_MASK	0xe0
	int rval;
	uint16_t dc;
	uint32_t dw;

	if (!FUNC0(vha->hw))
		return QLA_SUCCESS;

	rval = FUNC4(vha, 0x7c00, 1);
	if (rval != QLA_SUCCESS) {
		FUNC2(ql_log_warn, vha, 0x0105,
		    "Unable to acquire semaphore.\n");
		goto done;
	}

	FUNC1(vha->hw->pdev, 0x54, &dc);
	rval = FUNC3(vha, 0x7a15, &dw);
	if (rval != QLA_SUCCESS) {
		FUNC2(ql_log_warn, vha, 0x0067, "Unable to read sync.\n");
		goto done_release;
	}

	dc &= MPS_MASK;
	if (dc == (dw & MPS_MASK))
		goto done_release;

	dw &= ~MPS_MASK;
	dw |= dc;
	rval = FUNC4(vha, 0x7a15, dw);
	if (rval != QLA_SUCCESS) {
		FUNC2(ql_log_warn, vha, 0x0114, "Unable to gain sync.\n");
	}

done_release:
	rval = FUNC4(vha, 0x7c00, 0);
	if (rval != QLA_SUCCESS) {
		FUNC2(ql_log_warn, vha, 0x006d,
		    "Unable to release semaphore.\n");
	}

done:
	return rval;
}