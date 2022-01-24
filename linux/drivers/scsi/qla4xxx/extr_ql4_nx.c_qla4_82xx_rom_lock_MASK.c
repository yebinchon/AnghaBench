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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_SEM2_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLA82XX_ROM_LOCK_ID ; 
 int /*<<< orphan*/  ROM_LOCK_DRIVER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int qla4_82xx_rom_lock_timeout ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct scsi_qla_host *ha)
{
	int i;
	int done = 0, timeout = 0;

	while (!done) {
		/* acquire semaphore2 from PCI HW block */

		done = FUNC3(ha, FUNC0(PCIE_SEM2_LOCK));
		if (done == 1)
			break;
		if (timeout >= qla4_82xx_rom_lock_timeout)
			return -1;

		timeout++;

		/* Yield CPU */
		if (!FUNC2())
			FUNC5();
		else {
			for (i = 0; i < 20; i++)
				FUNC1();    /*This a nop instr on i386*/
		}
	}
	FUNC4(ha, QLA82XX_ROM_LOCK_ID, ROM_LOCK_DRIVER);
	return 0;
}