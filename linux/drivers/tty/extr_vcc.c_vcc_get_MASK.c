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
struct vcc_port {int excl_locked; scalar_t__ refcnt; } ;

/* Variables and functions */
 int VCC_REF_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct vcc_port** vcc_table ; 
 int /*<<< orphan*/  vcc_table_lock ; 

__attribute__((used)) static struct vcc_port *FUNC3(unsigned long index, bool excl)
{
	struct vcc_port *port;
	unsigned long flags;

try_again:
	FUNC0(&vcc_table_lock, flags);

	port = vcc_table[index];
	if (!port) {
		FUNC1(&vcc_table_lock, flags);
		return NULL;
	}

	if (!excl) {
		if (port->excl_locked) {
			FUNC1(&vcc_table_lock, flags);
			FUNC2(VCC_REF_DELAY);
			goto try_again;
		}
		port->refcnt++;
		FUNC1(&vcc_table_lock, flags);
		return port;
	}

	if (port->refcnt) {
		FUNC1(&vcc_table_lock, flags);
		/* Threads wanting exclusive access will wait half the time,
		 * probably giving them higher priority in the case of
		 * multiple waiters.
		 */
		FUNC2(VCC_REF_DELAY/2);
		goto try_again;
	}

	port->refcnt++;
	port->excl_locked = true;
	FUNC1(&vcc_table_lock, flags);

	return port;
}