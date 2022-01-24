#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  release; int /*<<< orphan*/  groups; int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_port {int d_id; int /*<<< orphan*/  status; int /*<<< orphan*/  list; TYPE_3__ dev; TYPE_2__ erp_action; int /*<<< orphan*/  rport_task; scalar_t__ wwpn; struct zfcp_adapter* adapter; int /*<<< orphan*/  rport_work; int /*<<< orphan*/  test_link_work; int /*<<< orphan*/  gid_pn_work; int /*<<< orphan*/  units; int /*<<< orphan*/  unit_list; int /*<<< orphan*/  unit_list_lock; } ;
struct zfcp_adapter {int /*<<< orphan*/  port_list_lock; int /*<<< orphan*/  port_list; TYPE_1__* ccw_device; int /*<<< orphan*/  ref; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct zfcp_port* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPORT_NONE ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char*,unsigned long long) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct zfcp_port* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_fc_link_test_work ; 
 int /*<<< orphan*/  zfcp_fc_port_did_lookup ; 
 struct zfcp_port* FUNC16 (struct zfcp_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  zfcp_port_attr_groups ; 
 int /*<<< orphan*/  zfcp_port_release ; 
 int /*<<< orphan*/  zfcp_scsi_rport_work ; 

struct zfcp_port *FUNC17(struct zfcp_adapter *adapter, u64 wwpn,
				     u32 status, u32 d_id)
{
	struct zfcp_port *port;
	int retval = -ENOMEM;

	FUNC8(&adapter->ref);

	port = FUNC16(adapter, wwpn);
	if (port) {
		FUNC11(&port->dev);
		retval = -EEXIST;
		goto err_out;
	}

	port = FUNC9(sizeof(struct zfcp_port), GFP_KERNEL);
	if (!port)
		goto err_out;

	FUNC12(&port->unit_list_lock);
	FUNC1(&port->unit_list);
	FUNC4(&port->units, 0);

	FUNC2(&port->gid_pn_work, zfcp_fc_port_did_lookup);
	FUNC2(&port->test_link_work, zfcp_fc_link_test_work);
	FUNC2(&port->rport_work, zfcp_scsi_rport_work);

	port->adapter = adapter;
	port->d_id = d_id;
	port->wwpn = wwpn;
	port->rport_task = RPORT_NONE;
	port->dev.parent = &adapter->ccw_device->dev;
	port->dev.groups = zfcp_port_attr_groups;
	port->dev.release = zfcp_port_release;

	port->erp_action.adapter = adapter;
	port->erp_action.port = port;

	if (FUNC5(&port->dev, "0x%016llx", (unsigned long long)wwpn)) {
		FUNC7(port);
		goto err_out;
	}
	retval = -EINVAL;

	if (FUNC6(&port->dev)) {
		FUNC11(&port->dev);
		goto err_out;
	}

	FUNC13(&adapter->port_list_lock);
	FUNC10(&port->list, &adapter->port_list);
	FUNC14(&adapter->port_list_lock);

	FUNC3(status | ZFCP_STATUS_COMMON_RUNNING, &port->status);

	return port;

err_out:
	FUNC15(adapter);
	return FUNC0(retval);
}