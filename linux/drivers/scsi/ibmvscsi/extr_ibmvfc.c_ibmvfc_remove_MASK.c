#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct ibmvfc_host {TYPE_2__* host; int /*<<< orphan*/  queue; int /*<<< orphan*/  work_thread; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; TYPE_1__ shost_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  IBMVFC_HOST_OFFLINE ; 
 int /*<<< orphan*/  LEAVE ; 
 struct ibmvfc_host* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ibmvfc_driver_lock ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ibmvfc_trace_attr ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct vio_dev *vdev)
{
	struct ibmvfc_host *vhost = FUNC0(&vdev->dev);
	unsigned long flags;

	ENTER;
	FUNC7(&vhost->host->shost_dev.kobj, &ibmvfc_trace_attr);

	FUNC14(vhost->host->host_lock, flags);
	FUNC4(vhost, IBMVFC_HOST_OFFLINE);
	FUNC16(vhost->host->host_lock, flags);

	FUNC8(vhost);
	FUNC6(vhost);
	FUNC9(vhost->work_thread);
	FUNC1(vhost->host);
	FUNC12(vhost->host);

	FUNC14(vhost->host->host_lock, flags);
	FUNC5(vhost, DID_ERROR);
	FUNC16(vhost->host->host_lock, flags);
	FUNC2(vhost);

	FUNC3(vhost);
	FUNC13(&ibmvfc_driver_lock);
	FUNC10(&vhost->queue);
	FUNC15(&ibmvfc_driver_lock);
	FUNC11(vhost->host);
	LEAVE;
	return 0;
}