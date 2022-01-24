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
struct scsi_device {int /*<<< orphan*/  inquiry; } ;
struct clariion_dh_data {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLARIION_NAME ; 
 int /*<<< orphan*/  CLARIION_SHORT_TRESPASS ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SCSI_DH_DEV_UNSUPP ; 
 int SCSI_DH_OK ; 
 char* FUNC0 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdev,
				struct clariion_dh_data *csdev)
{
	int err = SCSI_DH_OK;
	char *sp_model;

	sp_model = FUNC0(sdev, sdev->inquiry);
	if (!sp_model) {
		err = SCSI_DH_DEV_UNSUPP;
		goto out;
	}

	/*
	 * FC Series arrays do not support long trespass
	 */
	if (!FUNC2(sp_model) || !FUNC3(sp_model, "FC",2))
		csdev->flags |= CLARIION_SHORT_TRESPASS;

	FUNC1(KERN_INFO, sdev,
		    "%s: detected Clariion %s, flags %x\n",
		    CLARIION_NAME, sp_model, csdev->flags);
out:
	return err;
}