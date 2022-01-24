#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct ibmvscsi_host_data {TYPE_1__* host; int /*<<< orphan*/  host_list; int /*<<< orphan*/  work_thread; int /*<<< orphan*/  queue; int /*<<< orphan*/  pool; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 struct ibmvscsi_host_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ibmvscsi_driver_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max_events ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvscsi_host_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct ibmvscsi_host_data*) ; 

__attribute__((used)) static int FUNC14(struct vio_dev *vdev)
{
	struct ibmvscsi_host_data *hostdata = FUNC0(&vdev->dev);
	unsigned long flags;

	FUNC12(hostdata->host);
	FUNC7(hostdata->host);

	FUNC4(hostdata, DID_ERROR);

	FUNC9(hostdata->host->host_lock, flags);
	FUNC5(&hostdata->pool, hostdata);
	FUNC11(hostdata->host->host_lock, flags);

	FUNC1(&hostdata->queue, hostdata,
					max_events);

	FUNC2(hostdata->work_thread);
	FUNC13(hostdata);

	FUNC8(&ibmvscsi_driver_lock);
	FUNC3(&hostdata->host_list);
	FUNC10(&ibmvscsi_driver_lock);

	FUNC6(hostdata->host);

	return 0;
}