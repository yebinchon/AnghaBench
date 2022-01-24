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
struct scsi_qla_host {scalar_t__ temperature; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ QLA82XX_TEMP_NORMAL ; 
 scalar_t__ QLA82XX_TEMP_PANIC ; 
 scalar_t__ QLA82XX_TEMP_WARN ; 
 int /*<<< orphan*/  QLA8XXX_CRB_TEMP_STATE ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct scsi_qla_host *ha)
{
	uint32_t temp, temp_state, temp_val;
	int status = QLA_SUCCESS;

	temp = FUNC1(ha, QLA8XXX_CRB_TEMP_STATE);

	temp_state = FUNC2(temp);
	temp_val = FUNC3(temp);

	if (temp_state == QLA82XX_TEMP_PANIC) {
		FUNC0(KERN_WARNING, ha, "Device temperature %d degrees C"
			   " exceeds maximum allowed. Hardware has been shut"
			   " down.\n", temp_val);
		status = QLA_ERROR;
	} else if (temp_state == QLA82XX_TEMP_WARN) {
		if (ha->temperature == QLA82XX_TEMP_NORMAL)
			FUNC0(KERN_WARNING, ha, "Device temperature %d"
				   " degrees C exceeds operating range."
				   " Immediate action needed.\n", temp_val);
	} else {
		if (ha->temperature == QLA82XX_TEMP_WARN)
			FUNC0(KERN_INFO, ha, "Device temperature is"
				   " now %d degrees C in normal range.\n",
				   temp_val);
	}
	ha->temperature = temp_state;
	return status;
}