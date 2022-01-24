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
struct scsi_mode_data {int device_specific; } ;
struct scsi_disk {int write_prot; scalar_t__ first_scan; int /*<<< orphan*/  disk; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ use_192_bytes_for_3f; scalar_t__ skip_ms_page_3f; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct scsi_device*,int /*<<< orphan*/ ,int,unsigned char*,int,struct scsi_mode_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_disk*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct scsi_disk *sdkp, unsigned char *buffer)
{
	int res;
	struct scsi_device *sdp = sdkp->device;
	struct scsi_mode_data data;
	int old_wp = sdkp->write_prot;

	FUNC4(sdkp->disk, 0);
	if (sdp->skip_ms_page_3f) {
		FUNC2(KERN_NOTICE, sdkp, "Assuming Write Enabled\n");
		return;
	}

	if (sdp->use_192_bytes_for_3f) {
		res = FUNC1(sdp, 0, 0x3F, buffer, 192, &data, NULL);
	} else {
		/*
		 * First attempt: ask for all pages (0x3F), but only 4 bytes.
		 * We have to start carefully: some devices hang if we ask
		 * for more than is available.
		 */
		res = FUNC1(sdp, 0, 0x3F, buffer, 4, &data, NULL);

		/*
		 * Second attempt: ask for page 0 When only page 0 is
		 * implemented, a request for page 3F may return Sense Key
		 * 5: Illegal Request, Sense Code 24: Invalid field in
		 * CDB.
		 */
		if (!FUNC0(res))
			res = FUNC1(sdp, 0, 0, buffer, 4, &data, NULL);

		/*
		 * Third attempt: ask 255 bytes, as we did earlier.
		 */
		if (!FUNC0(res))
			res = FUNC1(sdp, 0, 0x3F, buffer, 255,
					       &data, NULL);
	}

	if (!FUNC0(res)) {
		FUNC2(KERN_WARNING, sdkp,
			  "Test WP failed, assume Write Enabled\n");
	} else {
		sdkp->write_prot = ((data.device_specific & 0x80) != 0);
		FUNC4(sdkp->disk, sdkp->write_prot);
		if (sdkp->first_scan || old_wp != sdkp->write_prot) {
			FUNC3(KERN_NOTICE, sdkp, "Write Protect is %s\n",
				  sdkp->write_prot ? "on" : "off");
			FUNC3(KERN_DEBUG, sdkp, "Mode Sense: %4ph\n", buffer);
		}
	}
}