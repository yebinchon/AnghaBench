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
struct tcpm_port {scalar_t__ hard_reset_count; int /*<<< orphan*/  attached; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpm_port*) ; 

__attribute__((used)) static void FUNC2(struct tcpm_port *port)
{
	if (!port->attached)
		return;

	if (FUNC0(port))
		port->hard_reset_count = 0;

	FUNC1(port);
}