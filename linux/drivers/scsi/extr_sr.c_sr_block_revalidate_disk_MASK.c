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
struct scsi_sense_hdr {int dummy; } ;
struct scsi_cd {int /*<<< orphan*/  cdi; int /*<<< orphan*/  device; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MAX_RETRIES ; 
 int /*<<< orphan*/  SR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cd*) ; 
 struct scsi_cd* FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cd*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gendisk *disk)
{
	struct scsi_sense_hdr sshdr;
	struct scsi_cd *cd;

	cd = FUNC1(disk);
	if (!cd)
		return -ENXIO;

	/* if the unit is not ready, nothing more to do */
	if (FUNC3(cd->device, SR_TIMEOUT, MAX_RETRIES, &sshdr))
		goto out;

	FUNC4(&cd->cdi);
	FUNC0(cd);
out:
	FUNC2(cd);
	return 0;
}