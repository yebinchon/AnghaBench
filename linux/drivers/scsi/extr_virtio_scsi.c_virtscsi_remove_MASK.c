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
struct virtio_scsi {int dummy; } ;
struct virtio_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_SCSI_F_HOTPLUG ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 struct virtio_scsi* FUNC2 (struct Scsi_Host*) ; 
 scalar_t__ FUNC3 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_scsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC7(struct virtio_device *vdev)
{
	struct Scsi_Host *shost = FUNC4(vdev);
	struct virtio_scsi *vscsi = FUNC2(shost);

	if (FUNC3(vdev, VIRTIO_SCSI_F_HOTPLUG))
		FUNC5(vscsi);

	FUNC1(shost);
	FUNC6(vdev);
	FUNC0(shost);
}