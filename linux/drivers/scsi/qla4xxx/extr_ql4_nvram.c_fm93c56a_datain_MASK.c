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
struct scsi_qla_host {int eeprom_cmd_data; } ;

/* Variables and functions */
 int AUBURN_EEPROM_CLK_FALL ; 
 int AUBURN_EEPROM_CLK_RISE ; 
 int AUBURN_EEPROM_DI_1 ; 
 int /*<<< orphan*/  FUNC0 (int,struct scsi_qla_host*) ; 
 int FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct scsi_qla_host * ha, unsigned short *value)
{
	int i;
	int data = 0;
	int dataBit;

	/* Read the data bits
	 * The first bit is a dummy.  Clock right over it. */
	for (i = 0; i < FUNC1(ha); i++) {
		FUNC0(ha->eeprom_cmd_data |
		       AUBURN_EEPROM_CLK_RISE, ha);
		FUNC0(ha->eeprom_cmd_data |
		       AUBURN_EEPROM_CLK_FALL, ha);

		dataBit = (FUNC3(FUNC2(ha)) & AUBURN_EEPROM_DI_1) ? 1 : 0;

		data = (data << 1) | dataBit;
	}

	*value = data;
	return 1;
}