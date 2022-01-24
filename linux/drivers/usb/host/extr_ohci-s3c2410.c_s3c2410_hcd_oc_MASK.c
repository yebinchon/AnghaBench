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
struct s3c2410_hcd_port {int flags; int oc_status; int oc_changed; } ;
struct s3c2410_hcd_info {struct s3c2410_hcd_port* port; } ;

/* Variables and functions */
 int S3C_HCDFLG_USED ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c2410_hcd_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct s3c2410_hcd_info *info, int port_oc)
{
	struct s3c2410_hcd_port *port;
	unsigned long flags;
	int portno;

	if (info == NULL)
		return;

	port = &info->port[0];

	FUNC1(flags);

	for (portno = 0; portno < 2; port++, portno++) {
		if (port_oc & (1<<portno) &&
		    port->flags & S3C_HCDFLG_USED) {
			port->oc_status = 1;
			port->oc_changed = 1;

			/* ok, once over-current is detected,
			   the port needs to be powered down */
			FUNC2(info, portno+1, 0);
		}
	}

	FUNC0(flags);
}