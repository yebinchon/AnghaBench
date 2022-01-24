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
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int flags; } ;

/* Variables and functions */
 int ENXIO ; 
 int FLAG_TOSHIBA_DELAY ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct NCR5380_hostdata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SR_BSY ; 
 int /*<<< orphan*/  STATUS_REG ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 struct NCR5380_hostdata* FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC7(struct Scsi_Host *instance)
{
	struct NCR5380_hostdata *hostdata = FUNC6(instance);
	int pass;

	for (pass = 1; (FUNC1(STATUS_REG) & SR_BSY) && pass <= 6; ++pass) {
		switch (pass) {
		case 1:
		case 3:
		case 5:
			FUNC5(KERN_ERR, instance, "SCSI bus busy, waiting up to five seconds\n");
			FUNC0(hostdata,
			                      STATUS_REG, SR_BSY, 0, 5 * HZ);
			break;
		case 2:
			FUNC5(KERN_ERR, instance, "bus busy, attempting abort\n");
			FUNC2(instance);
			break;
		case 4:
			FUNC5(KERN_ERR, instance, "bus busy, attempting reset\n");
			FUNC3(instance);
			/* Wait after a reset; the SCSI standard calls for
			 * 250ms, we wait 500ms to be on the safe side.
			 * But some Toshiba CD-ROMs need ten times that.
			 */
			if (hostdata->flags & FLAG_TOSHIBA_DELAY)
				FUNC4(2500);
			else
				FUNC4(500);
			break;
		case 6:
			FUNC5(KERN_ERR, instance, "bus locked solid\n");
			return -ENXIO;
		}
	}
	return 0;
}