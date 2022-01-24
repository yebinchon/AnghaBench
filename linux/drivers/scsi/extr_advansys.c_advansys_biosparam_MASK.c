#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int /*<<< orphan*/  host; } ;
struct block_device {int dummy; } ;
struct TYPE_5__ {int bios_ctrl; } ;
struct TYPE_4__ {int dvc_cntl; } ;
struct TYPE_6__ {TYPE_2__ adv_dvc_var; TYPE_1__ asc_dvc_var; } ;
struct asc_board {TYPE_3__ dvc_var; } ;
typedef  int sector_t ;

/* Variables and functions */
 int ASC_CNTL_BIOS_GT_1GB ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct asc_board*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BIOS_CTRL_EXTENDED_XLAT ; 
 int /*<<< orphan*/  biosparam ; 
 struct asc_board* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct scsi_device *sdev, struct block_device *bdev,
		   sector_t capacity, int ip[])
{
	struct asc_board *boardp = FUNC3(sdev->host);

	FUNC0(1, "begin\n");
	FUNC2(sdev->host, biosparam);
	if (FUNC1(boardp)) {
		if ((boardp->dvc_var.asc_dvc_var.dvc_cntl &
		     ASC_CNTL_BIOS_GT_1GB) && capacity > 0x200000) {
			ip[0] = 255;
			ip[1] = 63;
		} else {
			ip[0] = 64;
			ip[1] = 32;
		}
	} else {
		if ((boardp->dvc_var.adv_dvc_var.bios_ctrl &
		     BIOS_CTRL_EXTENDED_XLAT) && capacity > 0x200000) {
			ip[0] = 255;
			ip[1] = 63;
		} else {
			ip[0] = 64;
			ip[1] = 32;
		}
	}
	ip[2] = (unsigned long)capacity / (ip[0] * ip[1]);
	FUNC0(1, "end\n");
	return 0;
}