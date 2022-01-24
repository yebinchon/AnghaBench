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
struct ps3_system_bus_device {int /*<<< orphan*/  core; } ;
struct ps3_storage_device {int /*<<< orphan*/  bounce_buf; int /*<<< orphan*/  sbd; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ps3_storage_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 struct ps3_storage_device* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ps3_system_bus_device *_dev)
{
	struct ps3_storage_device *dev = FUNC6(&_dev->core);
	struct Scsi_Host *host = FUNC1(&dev->sbd);

	FUNC5(host);
	FUNC3(dev);
	FUNC4(host);
	FUNC2(&dev->sbd, NULL);
	FUNC0(dev->bounce_buf);
	return 0;
}