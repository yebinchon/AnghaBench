#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  devno; } ;
struct urdev {TYPE_1__ dev_id; } ;
struct file_control_block {int file_stat; } ;

/* Variables and functions */
 int EMFILE ; 
 int ENODATA ; 
 int ENOMEM ; 
 int EPERM ; 
 int FLG_IN_USE ; 
 int FLG_SYSTEM_HOLD ; 
 int FLG_USER_HOLD ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct file_control_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct file_control_block*) ; 
 struct file_control_block* FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct urdev *urd)
{
	struct file_control_block *fcb;
	char *buf;
	int rc;

	fcb = FUNC5(sizeof(*fcb), GFP_KERNEL | GFP_DMA);
	if (!fcb)
		return -ENOMEM;

	/* check for empty reader device (beginning of chain) */
	rc = FUNC2(fcb, 0);
	if (rc)
		goto fail_free_fcb;

	/* if file is in hold status, we do not read it */
	if (fcb->file_stat & (FLG_SYSTEM_HOLD | FLG_USER_HOLD)) {
		rc = -EPERM;
		goto fail_free_fcb;
	}

	/* open file on virtual reader	*/
	buf = (char *) FUNC0(GFP_KERNEL | GFP_DMA);
	if (!buf) {
		rc = -ENOMEM;
		goto fail_free_fcb;
	}
	rc = FUNC1(urd->dev_id.devno, buf);
	if ((rc != 0) && (rc != -ENODATA)) /* EOF does not hurt */
		goto fail_free_buf;

	/* check if the file on top of the queue is open now */
	rc = FUNC2(fcb, 0);
	if (rc)
		goto fail_free_buf;
	if (!(fcb->file_stat & FLG_IN_USE)) {
		rc = -EMFILE;
		goto fail_free_buf;
	}
	rc = 0;

fail_free_buf:
	FUNC3((unsigned long) buf);
fail_free_fcb:
	FUNC4(fcb);
	return rc;
}