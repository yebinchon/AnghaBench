#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
struct mts_desc {int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  usb_intf; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct mts_desc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *srb)
{
	struct mts_desc* desc = (struct mts_desc*)(srb->device->host->hostdata[0]);
	int result;

	FUNC0();
	FUNC1(desc);

	result = FUNC2(desc->usb_dev, desc->usb_intf);
	if (result == 0) {
		result = FUNC3(desc->usb_dev);
		FUNC4(desc->usb_dev);
	}
	return result ? FAILED : SUCCESS;
}