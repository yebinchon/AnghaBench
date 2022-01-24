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
struct qla_hw_data {int flt_region_vpd_nvram; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (struct qla_hw_data*,int) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*,int,int*) ; 

uint8_t *
FUNC3(scsi_qla_host_t *vha, void *buf, uint32_t naddr,
    uint32_t bytes)
{
	struct qla_hw_data *ha = vha->hw;
	uint32_t *dwptr = buf;
	uint32_t i;

	/* Dword reads to flash. */
	naddr = FUNC1(ha, ha->flt_region_vpd_nvram | naddr);
	bytes >>= 2;
	for (i = 0; i < bytes; i++, naddr++, dwptr++) {
		if (FUNC2(ha, naddr, dwptr))
			break;

		FUNC0(dwptr);
	}

	return buf;
}