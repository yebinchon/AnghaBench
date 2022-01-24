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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; TYPE_3__* sdev_target; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct enclosure_device {TYPE_1__ edev; } ;
struct efd {int /*<<< orphan*/ * dev; scalar_t__ addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct efd*) ; 
 scalar_t__ FUNC1 (struct scsi_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct enclosure_device*,struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ses_enclosure_find_by_addr ; 
 struct scsi_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct enclosure_device *edev,
				   struct scsi_device *sdev,
				   int refresh)
{
	struct scsi_device *edev_sdev = FUNC4(edev->edev.parent);
	struct efd efd = {
		.addr = 0,
	};

	if (refresh)
		FUNC3(edev, edev_sdev, 0);

	if (FUNC2(sdev->sdev_target->dev.parent))
		efd.addr = FUNC1(sdev);

	if (efd.addr) {
		efd.dev = &sdev->sdev_gendev;

		FUNC0(ses_enclosure_find_by_addr, &efd);
	}
}