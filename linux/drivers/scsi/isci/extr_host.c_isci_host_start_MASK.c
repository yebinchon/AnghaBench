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
struct isci_host {int /*<<< orphan*/  scic_lock; int /*<<< orphan*/  flags; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct isci_host* lldd_ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  IHOST_START_PENDING ; 
 TYPE_1__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct isci_host*) ; 
 unsigned long FUNC2 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_host*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct Scsi_Host *shost)
{
	struct isci_host *ihost = FUNC0(shost)->lldd_ha;
	unsigned long tmo = FUNC2(ihost);

	FUNC4(IHOST_START_PENDING, &ihost->flags);

	FUNC5(&ihost->scic_lock);
	FUNC3(ihost, tmo);
	FUNC1(ihost);
	FUNC6(&ihost->scic_lock);
}