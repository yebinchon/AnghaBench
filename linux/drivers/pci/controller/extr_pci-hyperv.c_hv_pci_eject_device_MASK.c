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
struct hv_pci_dev {int /*<<< orphan*/  wrk; TYPE_1__* hbus; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_pci_dev*) ; 
 int /*<<< orphan*/  hv_eject_device_work ; 
 int /*<<< orphan*/  hv_pcichild_ejecting ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hv_pci_dev *hpdev)
{
	hpdev->state = hv_pcichild_ejecting;
	FUNC2(hpdev);
	FUNC0(&hpdev->wrk, hv_eject_device_work);
	FUNC1(hpdev->hbus);
	FUNC3(hpdev->hbus->wq, &hpdev->wrk);
}