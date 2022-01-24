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
struct urb {int dummy; } ;
struct uas_dev_info {int /*<<< orphan*/  sense_urbs; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct uas_dev_info* hostdata; } ;

/* Variables and functions */
 struct urb* FUNC0 (struct uas_dev_info*,int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

__attribute__((used)) static struct urb *FUNC6(struct scsi_cmnd *cmnd, gfp_t gfp)
{
	struct uas_dev_info *devinfo = cmnd->device->hostdata;
	struct urb *urb;
	int err;

	urb = FUNC0(devinfo, gfp, cmnd);
	if (!urb)
		return NULL;
	FUNC2(urb, &devinfo->sense_urbs);
	err = FUNC4(urb, gfp);
	if (err) {
		FUNC5(urb);
		FUNC1(cmnd, "sense submit err", err);
		FUNC3(urb);
		return NULL;
	}
	return urb;
}