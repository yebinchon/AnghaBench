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
struct vcc_port {int excl_locked; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vcc_table_lock ; 

__attribute__((used)) static void FUNC3(struct vcc_port *port, bool excl)
{
	unsigned long flags;

	if (!port)
		return;

	FUNC1(&vcc_table_lock, flags);

	/* check if caller attempted to put with the wrong flags */
	if (FUNC0((excl && !port->excl_locked) ||
		    (!excl && port->excl_locked)))
		goto done;

	port->refcnt--;

	if (excl)
		port->excl_locked = false;

done:
	FUNC2(&vcc_table_lock, flags);
}