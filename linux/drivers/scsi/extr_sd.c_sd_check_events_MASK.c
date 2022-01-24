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
struct scsi_sense_hdr {int /*<<< orphan*/  member_0; } ;
struct scsi_disk {int media_present; struct scsi_device* device; } ;
struct scsi_device {int changed; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int DISK_EVENT_MEDIA_CHANGE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct scsi_disk*,struct scsi_sense_hdr*) ; 
 scalar_t__ FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 struct scsi_disk* FUNC5 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_disk*) ; 
 int FUNC7 (struct scsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_disk*) ; 

__attribute__((used)) static unsigned int FUNC10(struct gendisk *disk, unsigned int clearing)
{
	struct scsi_disk *sdkp = FUNC5(disk);
	struct scsi_device *sdp;
	int retval;

	if (!sdkp)
		return 0;

	sdp = sdkp->device;
	FUNC0(3, FUNC8(KERN_INFO, sdkp, "sd_check_events\n"));

	/*
	 * If the device is offline, don't send any commands - just pretend as
	 * if the command failed.  If the device ever comes back online, we
	 * can deal with it then.  It is only because of unrecoverable errors
	 * that we would ever take a device offline in the first place.
	 */
	if (!FUNC4(sdp)) {
		FUNC9(sdkp);
		goto out;
	}

	/*
	 * Using TEST_UNIT_READY enables differentiation between drive with
	 * no cartridge loaded - NOT READY, drive with changed cartridge -
	 * UNIT ATTENTION, or with same cartridge - GOOD STATUS.
	 *
	 * Drives that auto spin down. eg iomega jaz 1G, will be started
	 * by sd_spinup_disk() from sd_revalidate_disk(), which happens whenever
	 * sd_revalidate() is called.
	 */
	if (FUNC3(sdp)) {
		struct scsi_sense_hdr sshdr = { 0, };

		retval = FUNC7(sdp, SD_TIMEOUT, SD_MAX_RETRIES,
					      &sshdr);

		/* failed to execute TUR, assume media not present */
		if (FUNC1(retval)) {
			FUNC9(sdkp);
			goto out;
		}

		if (FUNC2(sdkp, &sshdr))
			goto out;
	}

	/*
	 * For removable scsi disk we have to recognise the presence
	 * of a disk in the drive.
	 */
	if (!sdkp->media_present)
		sdp->changed = 1;
	sdkp->media_present = 1;
out:
	/*
	 * sdp->changed is set under the following conditions:
	 *
	 *	Medium present state has changed in either direction.
	 *	Device has indicated UNIT_ATTENTION.
	 */
	retval = sdp->changed ? DISK_EVENT_MEDIA_CHANGE : 0;
	sdp->changed = 0;
	FUNC6(sdkp);
	return retval;
}