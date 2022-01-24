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
typedef  int /*<<< orphan*/  u32 ;
struct typec_altmode {int dummy; } ;
struct tcpm_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  vdm_state_machine; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpm_port*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 struct tcpm_port* FUNC4 (struct typec_altmode*) ; 

__attribute__((used)) static int FUNC5(struct typec_altmode *altmode,
			    u32 header, const u32 *data, int count)
{
	struct tcpm_port *port = FUNC4(altmode);

	FUNC1(&port->lock);
	FUNC3(port, header, data, count - 1);
	FUNC0(port->wq, &port->vdm_state_machine, 0);
	FUNC2(&port->lock);

	return 0;
}