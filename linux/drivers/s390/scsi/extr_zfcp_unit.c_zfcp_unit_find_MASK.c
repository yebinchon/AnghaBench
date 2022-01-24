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
typedef  int /*<<< orphan*/  u64 ;
struct zfcp_unit {int dummy; } ;
struct zfcp_port {int /*<<< orphan*/  unit_list_lock; } ;

/* Variables and functions */
 struct zfcp_unit* FUNC0 (struct zfcp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct zfcp_unit *FUNC3(struct zfcp_port *port, u64 fcp_lun)
{
	struct zfcp_unit *unit;

	FUNC1(&port->unit_list_lock);
	unit = FUNC0(port, fcp_lun);
	FUNC2(&port->unit_list_lock);
	return unit;
}