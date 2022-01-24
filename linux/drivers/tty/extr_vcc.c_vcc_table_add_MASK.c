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
struct vcc_port {int dummy; } ;

/* Variables and functions */
 int VCC_MAX_PORTS ; 
 int VCC_MINOR_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vcc_port** vcc_table ; 
 int /*<<< orphan*/  vcc_table_lock ; 

__attribute__((used)) static int FUNC2(struct vcc_port *port)
{
	unsigned long flags;
	int i;

	FUNC0(&vcc_table_lock, flags);
	for (i = VCC_MINOR_START; i < VCC_MAX_PORTS; i++) {
		if (!vcc_table[i]) {
			vcc_table[i] = port;
			break;
		}
	}
	FUNC1(&vcc_table_lock, flags);

	if (i < VCC_MAX_PORTS)
		return i;
	else
		return -1;
}