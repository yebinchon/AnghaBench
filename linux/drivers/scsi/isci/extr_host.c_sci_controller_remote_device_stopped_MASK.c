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
struct isci_remote_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ current_state_id; } ;
struct isci_host {TYPE_2__ sm; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SCIC_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct isci_host*,struct isci_remote_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_host*) ; 

void FUNC3(struct isci_host *ihost,
					  struct isci_remote_device *idev)
{
	if (ihost->sm.current_state_id != SCIC_STOPPING) {
		FUNC0(&ihost->pdev->dev,
			"SCIC Controller 0x%p remote device stopped event "
			"from device 0x%p in unexpected state %d\n",
			ihost, idev,
			ihost->sm.current_state_id);
		return;
	}

	if (!FUNC2(ihost))
		FUNC1(ihost);
}