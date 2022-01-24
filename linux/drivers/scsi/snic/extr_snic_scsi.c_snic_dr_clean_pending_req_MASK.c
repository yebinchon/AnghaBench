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
typedef  scalar_t__ u32 ;
struct snic {scalar_t__ max_tag_id; int /*<<< orphan*/  shost; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct scsi_cmnd {struct scsi_device* device; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 int FUNC6 (struct snic*,scalar_t__,struct scsi_device*) ; 
 scalar_t__ FUNC7 (struct snic*,struct scsi_cmnd*) ; 

__attribute__((used)) static int
FUNC8(struct snic *snic, struct scsi_cmnd *lr_sc)
{
	struct scsi_device *lr_sdev = lr_sc->device;
	u32 tag = 0;
	int ret = FAILED;

	for (tag = 0; tag < snic->max_tag_id; tag++) {
		if (tag == FUNC5(lr_sc))
			continue;

		ret = FUNC6(snic, tag, lr_sdev);
		if (ret) {
			FUNC0(snic->shost, "clean_err:tag = %d\n", tag);

			goto clean_err;
		}
	}

	FUNC4(FUNC3(100));

	/* Walk through all the cmds and check abts status. */
	if (FUNC7(snic, lr_sc)) {
		ret = FAILED;

		goto clean_err;
	}

	ret = 0;
	FUNC1(snic->shost, "clean_pending_req: Success.\n");

	return ret;

clean_err:
	ret = FAILED;
	FUNC0(snic->shost,
		      "Failed to Clean Pending IOs on %s device.\n",
		      FUNC2(&lr_sdev->sdev_gendev));

	return ret;

}