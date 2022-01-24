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
struct vscsifrnt_info {int pause; int waiting_pause; int /*<<< orphan*/  wq_pause; int /*<<< orphan*/  wq_sync; scalar_t__ wait_ring_available; scalar_t__ callers; struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct vscsifrnt_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct xenbus_device *dev)
{
	struct vscsifrnt_info *info = FUNC0(&dev->dev);
	struct Scsi_Host *host = info->host;
	int err = 0;

	/* No new commands for the backend. */
	FUNC1(host->host_lock);
	info->pause = 1;
	while (info->callers && !err) {
		info->waiting_pause = 1;
		info->wait_ring_available = 0;
		FUNC2(host->host_lock);
		FUNC4(&info->wq_sync);
		err = FUNC3(info->wq_pause,
					       !info->waiting_pause);
		FUNC1(host->host_lock);
	}
	FUNC2(host->host_lock);
	return err;
}