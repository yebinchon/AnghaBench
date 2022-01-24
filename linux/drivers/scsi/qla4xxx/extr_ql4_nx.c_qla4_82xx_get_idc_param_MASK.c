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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {void* nx_reset_timeout; void* nx_dev_init_timeout; scalar_t__ request_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  QLA82XX_IDC_PARAM_ADDR ; 
 void* ROM_DEV_INIT_TIMEOUT ; 
 void* ROM_DRV_RESET_ACK_TIMEOUT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct scsi_qla_host *ha)
{
#define QLA82XX_IDC_PARAM_ADDR      0x003e885c
	uint32_t *wptr;

	if (!FUNC2(ha))
		return;
	wptr = (uint32_t *)ha->request_ring;
	FUNC5(ha, (uint8_t *)ha->request_ring,
			QLA82XX_IDC_PARAM_ADDR , 8);

	if (*wptr == FUNC1(0xffffffff)) {
		ha->nx_dev_init_timeout = ROM_DEV_INIT_TIMEOUT;
		ha->nx_reset_timeout = ROM_DRV_RESET_ACK_TIMEOUT;
	} else {
		ha->nx_dev_init_timeout = FUNC3(*wptr++);
		ha->nx_reset_timeout = FUNC3(*wptr);
	}

	FUNC0(FUNC4(KERN_DEBUG, ha,
		"ha->nx_dev_init_timeout = %d\n", ha->nx_dev_init_timeout));
	FUNC0(FUNC4(KERN_DEBUG, ha,
		"ha->nx_reset_timeout = %d\n", ha->nx_reset_timeout));
	return;
}