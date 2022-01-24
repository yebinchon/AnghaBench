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
typedef  int /*<<< orphan*/  u32 ;
struct zfcp_fc_wka_port {int /*<<< orphan*/  work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  refcount; int /*<<< orphan*/  status; int /*<<< orphan*/  d_id; struct zfcp_adapter* adapter; int /*<<< orphan*/  completion_wq; } ;
struct zfcp_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFCP_FC_WKA_PORT_OFFLINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_fc_wka_port_offline ; 

__attribute__((used)) static void FUNC4(struct zfcp_fc_wka_port *wka_port, u32 d_id,
				  struct zfcp_adapter *adapter)
{
	FUNC2(&wka_port->completion_wq);

	wka_port->adapter = adapter;
	wka_port->d_id = d_id;

	wka_port->status = ZFCP_FC_WKA_PORT_OFFLINE;
	FUNC1(&wka_port->refcount, 0);
	FUNC3(&wka_port->mutex);
	FUNC0(&wka_port->work, zfcp_fc_wka_port_offline);
}