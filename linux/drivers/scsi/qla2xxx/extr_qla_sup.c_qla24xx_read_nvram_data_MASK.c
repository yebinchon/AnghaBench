#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
typedef  int uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (struct qla_hw_data*,int) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*,int,int*) ; 

uint8_t *
FUNC4(scsi_qla_host_t *vha, void *buf, uint32_t naddr,
    uint32_t bytes)
{
	struct qla_hw_data *ha = vha->hw;
	uint32_t *dwptr = buf;
	uint32_t i;

	if (FUNC0(ha))
		return  buf;

	/* Dword reads to flash. */
	naddr = FUNC2(ha, naddr);
	bytes >>= 2;
	for (i = 0; i < bytes; i++, naddr++, dwptr++) {
		if (FUNC3(ha, naddr, dwptr))
			break;
		FUNC1(dwptr);
	}

	return buf;
}