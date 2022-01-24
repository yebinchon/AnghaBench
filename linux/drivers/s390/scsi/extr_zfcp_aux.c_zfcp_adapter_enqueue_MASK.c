#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  seq_print; } ;
struct TYPE_8__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  list; } ;
struct TYPE_7__ {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  stat_read_buf_num; int /*<<< orphan*/  dma_parms; struct ccw_device* ccw_device; TYPE_3__ service_level; int /*<<< orphan*/  abort_lock; int /*<<< orphan*/  erp_lock; int /*<<< orphan*/  erp_running_head; int /*<<< orphan*/  erp_ready_head; int /*<<< orphan*/  erp_done_wqh; int /*<<< orphan*/  erp_ready_wq; TYPE_2__ events; int /*<<< orphan*/  port_list; int /*<<< orphan*/  port_list_lock; int /*<<< orphan*/  req_list; TYPE_1__ erp_action; int /*<<< orphan*/  next_port_scan; int /*<<< orphan*/  ns_up_work; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  stat_work; int /*<<< orphan*/  ref; } ;
struct TYPE_10__ {int /*<<< orphan*/ * dma_parms; int /*<<< orphan*/  kobj; } ;
struct ccw_device {TYPE_4__ dev; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct zfcp_adapter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSF_STATUS_READS_RECOM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _zfcp_status_read_scheduler ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct zfcp_adapter* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC14 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC15 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC16 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC17 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_fc_post_event ; 
 int /*<<< orphan*/  zfcp_fc_scan_ports ; 
 int /*<<< orphan*/  zfcp_fc_sym_name_update ; 
 int /*<<< orphan*/  zfcp_print_sl ; 
 scalar_t__ FUNC18 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC21 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_sysfs_adapter_attrs ; 

struct zfcp_adapter *FUNC22(struct ccw_device *ccw_device)
{
	struct zfcp_adapter *adapter;

	if (!FUNC5(&ccw_device->dev))
		return FUNC0(-ENODEV);

	adapter = FUNC8(sizeof(struct zfcp_adapter), GFP_KERNEL);
	if (!adapter) {
		FUNC9(&ccw_device->dev);
		return FUNC0(-ENOMEM);
	}

	FUNC7(&adapter->ref);

	ccw_device->handler = NULL;
	adapter->ccw_device = ccw_device;

	FUNC3(&adapter->stat_work, _zfcp_status_read_scheduler);
	FUNC1(&adapter->scan_work, zfcp_fc_scan_ports);
	FUNC3(&adapter->ns_up_work, zfcp_fc_sym_name_update);

	adapter->next_port_scan = jiffies;

	adapter->erp_action.adapter = adapter;

	if (FUNC18(adapter))
		goto failed;

	if (FUNC14(adapter))
		goto failed;

	adapter->req_list = FUNC19();
	if (!adapter->req_list)
		goto failed;

	if (FUNC15(adapter))
		goto failed;

	if (FUNC21(adapter))
		goto failed;

	if (FUNC17(adapter))
		goto failed;

	FUNC10(&adapter->port_list_lock);
	FUNC2(&adapter->port_list);

	FUNC2(&adapter->events.list);
	FUNC3(&adapter->events.work, zfcp_fc_post_event);
	FUNC11(&adapter->events.list_lock);

	FUNC6(&adapter->erp_ready_wq);
	FUNC6(&adapter->erp_done_wqh);

	FUNC2(&adapter->erp_ready_head);
	FUNC2(&adapter->erp_running_head);

	FUNC10(&adapter->erp_lock);
	FUNC10(&adapter->abort_lock);

	if (FUNC16(adapter))
		goto failed;

	adapter->service_level.seq_print = zfcp_print_sl;

	FUNC4(&ccw_device->dev, adapter);

	if (FUNC12(&ccw_device->dev.kobj,
			       &zfcp_sysfs_adapter_attrs))
		goto failed;

	/* report size limit per scatter-gather segment */
	adapter->ccw_device->dev.dma_parms = &adapter->dma_parms;

	adapter->stat_read_buf_num = FSF_STATUS_READS_RECOM;

	if (!FUNC20(adapter))
		return adapter;

failed:
	FUNC13(adapter);
	return FUNC0(-ENOMEM);
}