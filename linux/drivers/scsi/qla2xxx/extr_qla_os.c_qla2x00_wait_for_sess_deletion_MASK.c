#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_7__ {TYPE_1__* hw; int /*<<< orphan*/  fcport_waitQ; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_6__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(scsi_qla_host_t *vha)
{
	u8 i;

	FUNC1(vha, 0);

	for (i = 0; i < 10; i++) {
		if (FUNC3(vha->fcport_waitQ,
		    FUNC2(vha), HZ) > 0)
			break;
	}

	FUNC0(vha->hw->wq);
}