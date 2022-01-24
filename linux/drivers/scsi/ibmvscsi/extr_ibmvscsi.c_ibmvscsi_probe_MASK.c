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
struct vio_device_id {int dummy; } ;
struct device {int dummy; } ;
struct vio_dev {struct device dev; } ;
struct srp_rport_identifiers {int /*<<< orphan*/  roles; int /*<<< orphan*/  port_id; } ;
struct srp_rport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  partition_name; } ;
struct ibmvscsi_host_data {struct srp_rport* work_thread; int /*<<< orphan*/  queue; int /*<<< orphan*/  pool; struct Scsi_Host* host; int /*<<< orphan*/  host_list; int /*<<< orphan*/  request_limit; TYPE_1__ madapter_info; struct device* dev; int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  sent; } ;
struct Scsi_Host {int max_cmd_len; int /*<<< orphan*/  max_channel; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_id; int /*<<< orphan*/  host_no; int /*<<< orphan*/  max_sectors; int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int H_RESOURCE ; 
 int /*<<< orphan*/  IBMVSCSI_MAX_LUN ; 
 int /*<<< orphan*/  IBMVSCSI_MAX_SECTORS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct srp_rport*) ; 
 int /*<<< orphan*/  FUNC2 (struct srp_rport*) ; 
 int /*<<< orphan*/  SRP_RPORT_ROLE_TARGET ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  driver_template ; 
 int /*<<< orphan*/  ibmvscsi_driver_lock ; 
 int /*<<< orphan*/  ibmvscsi_head ; 
 int FUNC8 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct ibmvscsi_host_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvscsi_transport_template ; 
 int /*<<< orphan*/  ibmvscsi_work ; 
 unsigned long init_timeout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ibmvscsi_host_data*) ; 
 unsigned long jiffies ; 
 struct srp_rport* FUNC13 (int /*<<< orphan*/ ,struct ibmvscsi_host_data*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct srp_rport*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  max_channel ; 
 int /*<<< orphan*/  max_events ; 
 int /*<<< orphan*/  max_id ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ibmvscsi_host_data*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ; 
 scalar_t__ FUNC21 (struct Scsi_Host*,struct device*) ; 
 struct Scsi_Host* FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC24 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC25 (struct Scsi_Host*) ; 
 struct ibmvscsi_host_data* FUNC26 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 struct srp_rport* FUNC29 (struct Scsi_Host*,struct srp_rport_identifiers*) ; 
 scalar_t__ FUNC30 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (struct ibmvscsi_host_data*) ; 

__attribute__((used)) static int FUNC32(struct vio_dev *vdev, const struct vio_device_id *id)
{
	struct ibmvscsi_host_data *hostdata;
	struct Scsi_Host *host;
	struct device *dev = &vdev->dev;
	struct srp_rport_identifiers ids;
	struct srp_rport *rport;
	unsigned long wait_switch = 0;
	int rc;

	FUNC7(&vdev->dev, NULL);

	host = FUNC22(&driver_template, sizeof(*hostdata));
	if (!host) {
		FUNC5(&vdev->dev, "couldn't allocate host data\n");
		goto scsi_host_alloc_failed;
	}

	host->transportt = ibmvscsi_transport_template;
	hostdata = FUNC26(host);
	FUNC18(hostdata, 0x00, sizeof(*hostdata));
	FUNC0(&hostdata->sent);
	FUNC11(&hostdata->work_wait_q);
	hostdata->host = host;
	hostdata->dev = dev;
	FUNC4(&hostdata->request_limit, -1);
	hostdata->host->max_sectors = IBMVSCSI_MAX_SECTORS_DEFAULT;

	if (FUNC16(hostdata)) {
		FUNC5(&vdev->dev, "couldn't map persistent buffers\n");
		goto persist_bufs_failed;
	}

	hostdata->work_thread = FUNC13(ibmvscsi_work, hostdata, "%s_%d",
					    "ibmvscsi", host->host_no);

	if (FUNC1(hostdata->work_thread)) {
		FUNC5(&vdev->dev, "couldn't initialize kthread. rc=%ld\n",
			FUNC2(hostdata->work_thread));
		goto init_crq_failed;
	}

	rc = FUNC8(&hostdata->queue, hostdata, max_events);
	if (rc != 0 && rc != H_RESOURCE) {
		FUNC5(&vdev->dev, "couldn't initialize crq. rc=%d\n", rc);
		goto kill_kthread;
	}
	if (FUNC12(&hostdata->pool, max_events, hostdata) != 0) {
		FUNC5(&vdev->dev, "couldn't initialize event pool\n");
		goto init_pool_failed;
	}

	host->max_lun = IBMVSCSI_MAX_LUN;
	host->max_id = max_id;
	host->max_channel = max_channel;
	host->max_cmd_len = 16;

	FUNC6(dev,
		 "Maximum ID: %d Maximum LUN: %llu Maximum Channel: %d\n",
		 host->max_id, host->max_lun, host->max_channel);

	if (FUNC21(hostdata->host, hostdata->dev))
		goto add_host_failed;

	/* we don't have a proper target_port_id so let's use the fake one */
	FUNC17(ids.port_id, hostdata->madapter_info.partition_name,
	       sizeof(ids.port_id));
	ids.roles = SRP_RPORT_ROLE_TARGET;
	rport = FUNC29(host, &ids);
	if (FUNC1(rport))
		goto add_srp_port_failed;

	/* Try to send an initialization message.  Note that this is allowed
	 * to fail if the other end is not acive.  In that case we don't
	 * want to scan
	 */
	if (FUNC10(hostdata, 0xC001000000000000LL, 0) == 0
	    || rc == H_RESOURCE) {
		/*
		 * Wait around max init_timeout secs for the adapter to finish
		 * initializing. When we are done initializing, we will have a
		 * valid request_limit.  We don't want Linux scanning before
		 * we are ready.
		 */
		for (wait_switch = jiffies + (init_timeout * HZ);
		     FUNC30(jiffies, wait_switch) &&
		     FUNC3(&hostdata->request_limit) < 2;) {

			FUNC19(10);
		}

		/* if we now have a valid request_limit, initiate a scan */
		if (FUNC3(&hostdata->request_limit) > 0)
			FUNC25(host);
	}

	FUNC7(&vdev->dev, hostdata);
	FUNC27(&ibmvscsi_driver_lock);
	FUNC15(&hostdata->host_list, &ibmvscsi_head);
	FUNC28(&ibmvscsi_driver_lock);
	return 0;

      add_srp_port_failed:
	FUNC24(hostdata->host);
      add_host_failed:
	FUNC20(&hostdata->pool, hostdata);
      init_pool_failed:
	FUNC9(&hostdata->queue, hostdata, max_events);
      kill_kthread:
      FUNC14(hostdata->work_thread);
      init_crq_failed:
	FUNC31(hostdata);
      persist_bufs_failed:
	FUNC23(host);
      scsi_host_alloc_failed:
	return -1;
}