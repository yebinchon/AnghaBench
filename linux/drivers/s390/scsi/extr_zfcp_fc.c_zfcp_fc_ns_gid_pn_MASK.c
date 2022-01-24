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
struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_fc_req {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gid_pn; } ;
struct zfcp_adapter {TYPE_1__ pool; TYPE_2__* gs; } ;
struct TYPE_4__ {int /*<<< orphan*/  ds; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct zfcp_fc_req* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_fc_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_fc_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct zfcp_port*,struct zfcp_fc_req*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct zfcp_port *port)
{
	int ret;
	struct zfcp_fc_req *fc_req;
	struct zfcp_adapter *adapter = port->adapter;

	fc_req = FUNC0(adapter->pool.gid_pn, GFP_ATOMIC);
	if (!fc_req)
		return -ENOMEM;

	FUNC2(fc_req, 0, sizeof(*fc_req));

	ret = FUNC4(&adapter->gs->ds);
	if (ret)
		goto out;

	ret = FUNC3(port, fc_req);

	FUNC5(&adapter->gs->ds);
out:
	FUNC1(fc_req, adapter->pool.gid_pn);
	return ret;
}