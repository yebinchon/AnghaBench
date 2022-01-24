#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct srp_rport_identifiers {int /*<<< orphan*/  roles; int /*<<< orphan*/  port_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; } ;
struct srp_rport {int reconnect_delay; int fast_io_fail_tmo; int dev_loss_tmo; TYPE_2__ dev; int /*<<< orphan*/  dev_loss_work; int /*<<< orphan*/  fast_io_fail_work; int /*<<< orphan*/  reconnect_work; int /*<<< orphan*/  roles; int /*<<< orphan*/  port_id; int /*<<< orphan*/  mutex; } ;
struct srp_internal {TYPE_1__* f; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; int /*<<< orphan*/  transportt; struct device shost_gendev; } ;
struct TYPE_13__ {int /*<<< orphan*/  next_port_id; } ;
struct TYPE_11__ {int* reconnect_delay; int* fast_io_fail_tmo; int* dev_loss_tmo; scalar_t__ reconnect; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct srp_rport* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct srp_rport* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  rport_dev_loss_timedout ; 
 int /*<<< orphan*/  rport_fast_io_fail_timedout ; 
 int /*<<< orphan*/  srp_reconnect_work ; 
 int /*<<< orphan*/  srp_rport_release ; 
 TYPE_6__* FUNC11 (struct Scsi_Host*) ; 
 struct srp_internal* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

struct srp_rport *FUNC17(struct Scsi_Host *shost,
				struct srp_rport_identifiers *ids)
{
	struct srp_rport *rport;
	struct device *parent = &shost->shost_gendev;
	struct srp_internal *i = FUNC12(shost->transportt);
	int id, ret;

	rport = FUNC7(sizeof(*rport), GFP_KERNEL);
	if (!rport)
		return FUNC0(-ENOMEM);

	FUNC9(&rport->mutex);

	FUNC5(&rport->dev);

	rport->dev.parent = FUNC6(parent);
	rport->dev.release = srp_rport_release;

	FUNC8(rport->port_id, ids->port_id, sizeof(rport->port_id));
	rport->roles = ids->roles;

	if (i->f->reconnect)
		rport->reconnect_delay = i->f->reconnect_delay ?
			*i->f->reconnect_delay : 10;
	FUNC1(&rport->reconnect_work, srp_reconnect_work);
	rport->fast_io_fail_tmo = i->f->fast_io_fail_tmo ?
		*i->f->fast_io_fail_tmo : 15;
	rport->dev_loss_tmo = i->f->dev_loss_tmo ? *i->f->dev_loss_tmo : 60;
	FUNC1(&rport->fast_io_fail_work,
			  rport_fast_io_fail_timedout);
	FUNC1(&rport->dev_loss_work, rport_dev_loss_timedout);

	id = FUNC2(&FUNC11(shost)->next_port_id);
	FUNC3(&rport->dev, "port-%d:%d", shost->host_no, id);

	FUNC16(&rport->dev);

	ret = FUNC4(&rport->dev);
	if (ret) {
		FUNC15(&rport->dev);
		FUNC10(&rport->dev);
		return FUNC0(ret);
	}

	FUNC13(&rport->dev);
	FUNC14(&rport->dev);

	return rport;
}