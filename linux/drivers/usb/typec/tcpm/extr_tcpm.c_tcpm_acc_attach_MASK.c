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
struct tcpm_port {int attached; int /*<<< orphan*/ * partner; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPEC_HOST ; 
 int /*<<< orphan*/  TYPEC_SOURCE ; 
 int FUNC0 (struct tcpm_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpm_port*) ; 

__attribute__((used)) static int FUNC2(struct tcpm_port *port)
{
	int ret;

	if (port->attached)
		return 0;

	ret = FUNC0(port, true, TYPEC_SOURCE, TYPEC_HOST);
	if (ret < 0)
		return ret;

	port->partner = NULL;

	FUNC1(port);

	port->attached = true;

	return 0;
}