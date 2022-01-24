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
struct vcc_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCC_CTL_HUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vcc_port*) ; 
 scalar_t__ FUNC3 (struct vcc_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vcc_port *port)
{
	unsigned long flags;

	FUNC0(&port->lock, flags);

	if (FUNC3(port, VCC_CTL_HUP) < 0)
		FUNC2(port);

	FUNC1(&port->lock, flags);
}