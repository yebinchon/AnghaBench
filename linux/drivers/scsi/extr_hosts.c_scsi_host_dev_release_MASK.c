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
struct device {struct device* parent; } ;
struct TYPE_2__ {scalar_t__ tags; } ;
struct Scsi_Host {scalar_t__ shost_state; int /*<<< orphan*/  host_no; struct Scsi_Host* shost_data; TYPE_1__ tag_set; int /*<<< orphan*/  shost_dev; scalar_t__ work_q; scalar_t__ ehandler; scalar_t__ tmf_work_q; int /*<<< orphan*/  hostt; } ;

/* Variables and functions */
 scalar_t__ SHOST_CREATED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  host_index_ida ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct device *dev)
{
	struct Scsi_Host *shost = FUNC2(dev);
	struct device *parent = dev->parent;

	FUNC9(shost->hostt);

	/* Wait for functions invoked through call_rcu(&shost->rcu, ...) */
	FUNC7();

	if (shost->tmf_work_q)
		FUNC0(shost->tmf_work_q);
	if (shost->ehandler)
		FUNC5(shost->ehandler);
	if (shost->work_q)
		FUNC0(shost->work_q);

	if (shost->shost_state == SHOST_CREATED) {
		/*
		 * Free the shost_dev device name here if scsi_host_alloc()
		 * and scsi_host_put() have been called but neither
		 * scsi_host_add() nor scsi_host_remove() has been called.
		 * This avoids that the memory allocated for the shost_dev
		 * name is leaked.
		 */
		FUNC4(FUNC1(&shost->shost_dev));
	}

	if (shost->tag_set.tags)
		FUNC8(shost);

	FUNC4(shost->shost_data);

	FUNC3(&host_index_ida, shost->host_no);

	if (parent)
		FUNC6(parent);
	FUNC4(shost);
}