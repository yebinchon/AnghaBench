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
struct fsg_lun {int /*<<< orphan*/  sense_data; scalar_t__ prevent_medium_removal; int /*<<< orphan*/  removable; } ;
struct fsg_common {int* cmnd; int /*<<< orphan*/  filesem; struct fsg_lun* curlun; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct fsg_lun*,char*) ; 
 int /*<<< orphan*/  SS_INVALID_COMMAND ; 
 int /*<<< orphan*/  SS_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SS_MEDIUM_NOT_PRESENT ; 
 int /*<<< orphan*/  SS_MEDIUM_REMOVAL_PREVENTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fsg_lun*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsg_lun*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct fsg_common *common)
{
	struct fsg_lun	*curlun = common->curlun;
	int		loej, start;

	if (!curlun) {
		return -EINVAL;
	} else if (!curlun->removable) {
		curlun->sense_data = SS_INVALID_COMMAND;
		return -EINVAL;
	} else if ((common->cmnd[1] & ~0x01) != 0 || /* Mask away Immed */
		   (common->cmnd[4] & ~0x03) != 0) { /* Mask LoEj, Start */
		curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
		return -EINVAL;
	}

	loej  = common->cmnd[4] & 0x02;
	start = common->cmnd[4] & 0x01;

	/*
	 * Our emulation doesn't support mounting; the medium is
	 * available for use as soon as it is loaded.
	 */
	if (start) {
		if (!FUNC4(curlun)) {
			curlun->sense_data = SS_MEDIUM_NOT_PRESENT;
			return -EINVAL;
		}
		return 0;
	}

	/* Are we allowed to unload the media? */
	if (curlun->prevent_medium_removal) {
		FUNC0(curlun, "unload attempt prevented\n");
		curlun->sense_data = SS_MEDIUM_REMOVAL_PREVENTED;
		return -EINVAL;
	}

	if (!loej)
		return 0;

	FUNC5(&common->filesem);
	FUNC2(&common->filesem);
	FUNC3(curlun);
	FUNC6(&common->filesem);
	FUNC1(&common->filesem);

	return 0;
}