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
struct zfcp_port {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zfcp_port*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_port*) ; 

__attribute__((used)) static void FUNC3(struct zfcp_port *port, int clear,
					 char *dbftag)
{
	FUNC1(port, clear);
	FUNC2(port);

	FUNC0(ZFCP_ERP_ACTION_REOPEN_PORT_FORCED,
				port->adapter, port, NULL, dbftag, 0);
}