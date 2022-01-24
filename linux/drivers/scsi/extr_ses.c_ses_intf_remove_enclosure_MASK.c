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
struct ses_device {struct ses_device* page2; struct ses_device* page1; struct ses_device* page10; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct enclosure_device {int /*<<< orphan*/  edev; TYPE_1__* component; struct ses_device* scratch; } ;
struct TYPE_2__ {struct ses_device* scratch; } ;

/* Variables and functions */
 struct enclosure_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct enclosure_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ses_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct scsi_device *sdev)
{
	struct enclosure_device *edev;
	struct ses_device *ses_dev;

	/*  exact match to this enclosure */
	edev = FUNC0(&sdev->sdev_gendev, NULL);
	if (!edev)
		return;

	ses_dev = edev->scratch;
	edev->scratch = NULL;

	FUNC2(ses_dev->page10);
	FUNC2(ses_dev->page1);
	FUNC2(ses_dev->page2);
	FUNC2(ses_dev);

	FUNC2(edev->component[0].scratch);

	FUNC3(&edev->edev);
	FUNC1(edev);
}