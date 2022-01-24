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
struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  erp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zfcp_port*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct zfcp_port *port, int clear, char *dbftag)
{
	unsigned long flags;
	struct zfcp_adapter *adapter = port->adapter;

	FUNC1(&adapter->erp_lock, flags);
	FUNC0(port, clear, dbftag);
	FUNC2(&adapter->erp_lock, flags);
}