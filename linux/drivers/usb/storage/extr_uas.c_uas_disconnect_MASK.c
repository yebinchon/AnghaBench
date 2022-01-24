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
struct usb_interface {int dummy; } ;
struct uas_dev_info {int resetting; int /*<<< orphan*/  data_urbs; int /*<<< orphan*/  sense_urbs; int /*<<< orphan*/  cmd_urbs; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_NO_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct uas_dev_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct uas_dev_info*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct Scsi_Host *shost = FUNC7(intf);
	struct uas_dev_info *devinfo = (struct uas_dev_info *)shost->hostdata;
	unsigned long flags;

	FUNC3(&devinfo->lock, flags);
	devinfo->resetting = 1;
	FUNC4(&devinfo->lock, flags);

	FUNC0(&devinfo->work);
	FUNC8(&devinfo->cmd_urbs);
	FUNC8(&devinfo->sense_urbs);
	FUNC8(&devinfo->data_urbs);
	FUNC6(devinfo, DID_NO_CONNECT);

	FUNC2(shost);
	FUNC5(devinfo);
	FUNC1(shost);
}