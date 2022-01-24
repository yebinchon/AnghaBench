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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct vscsifrnt_info {struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct vscsifrnt_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct vscsifrnt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct vscsifrnt_info*) ; 
 int FUNC5 (struct vscsifrnt_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xenbus_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct xenbus_device *dev)
{
	struct vscsifrnt_info *info = FUNC1(&dev->dev);
	struct Scsi_Host *host = info->host;
	int err;

	FUNC6(host->host_lock);

	/* Finish all still pending commands. */
	FUNC3(info);

	FUNC7(host->host_lock);

	/* Reconnect to dom0. */
	FUNC4(info);
	err = FUNC5(info);
	if (err) {
		FUNC0(&dev->dev, "fail to resume %d\n", err);
		FUNC2(host);
		return err;
	}

	FUNC8(dev, XenbusStateInitialised);

	return 0;
}