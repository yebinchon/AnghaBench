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
struct zfcp_port {int /*<<< orphan*/  dev; } ;
struct zfcp_adapter {int dummy; } ;
struct fc_rport {int /*<<< orphan*/  port_id; int /*<<< orphan*/  port_name; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct zfcp_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_port*,int /*<<< orphan*/ ,char*) ; 
 struct zfcp_port* FUNC4 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fc_rport *rport)
{
	struct zfcp_port *port;
	struct Scsi_Host *shost = FUNC1(rport);
	struct zfcp_adapter *adapter =
		(struct zfcp_adapter *)shost->hostdata[0];

	port = FUNC4(adapter, rport->port_name);

	if (port) {
		FUNC3(port, 0, "sctrpi1");
		FUNC0(&port->dev);
	} else {
		FUNC2(
			"sctrpin", adapter,
			rport->port_name /* zfcp_scsi_rport_register */,
			rport->port_id /* zfcp_scsi_rport_register */);
	}
}