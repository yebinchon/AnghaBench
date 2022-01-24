#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct zfcp_port {scalar_t__ wwpn; int /*<<< orphan*/  d_id; } ;
struct zfcp_erp_action {struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {scalar_t__ peer_wwpn; int /*<<< orphan*/  peer_d_id; } ;

/* Variables and functions */
 int ZFCP_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int FUNC0 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct zfcp_erp_action *act)
{
	struct zfcp_adapter *adapter = act->adapter;
	struct zfcp_port *port = act->port;

	if (port->wwpn != adapter->peer_wwpn) {
		FUNC1(port, ZFCP_STATUS_COMMON_ERP_FAILED);
		return ZFCP_ERP_FAILED;
	}
	port->d_id = adapter->peer_d_id;
	return FUNC0(act);
}