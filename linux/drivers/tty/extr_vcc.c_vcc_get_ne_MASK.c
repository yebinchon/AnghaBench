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
struct vcc_port {scalar_t__ removed; } ;

/* Variables and functions */
 struct vcc_port* FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vcc_port*,int) ; 

__attribute__((used)) static struct vcc_port *FUNC2(unsigned long index)
{
	struct vcc_port *port;

	port = FUNC0(index, false);

	if (port && port->removed) {
		FUNC1(port, false);
		return NULL;
	}

	return port;
}