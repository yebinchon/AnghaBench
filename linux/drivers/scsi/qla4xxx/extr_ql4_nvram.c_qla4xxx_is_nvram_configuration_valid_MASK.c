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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  hardware_lock; } ;

/* Variables and functions */
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct scsi_qla_host * ha)
{
	int status = QLA_ERROR;
	uint16_t checksum = 0;
	uint32_t index;
	unsigned long flags;

	FUNC2(&ha->hardware_lock, flags);
	for (index = 0; index < FUNC0(ha); index++)
		checksum += FUNC1(ha, index);
	FUNC3(&ha->hardware_lock, flags);

	if (checksum == 0)
		status = QLA_SUCCESS;

	return status;
}