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
struct tcpm_port {int /*<<< orphan*/  wq; int /*<<< orphan*/  role_sw; int /*<<< orphan*/  typec_port; int /*<<< orphan*/ * port_altmode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct tcpm_port *port)
{
	int i;

	FUNC3(port);
	for (i = 0; i < FUNC0(port->port_altmode); i++)
		FUNC4(port->port_altmode[i]);
	FUNC5(port->typec_port);
	FUNC6(port->role_sw);
	FUNC2(port);
	FUNC1(port->wq);
}