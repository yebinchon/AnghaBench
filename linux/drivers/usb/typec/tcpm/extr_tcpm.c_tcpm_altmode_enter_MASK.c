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
struct typec_altmode {int /*<<< orphan*/  mode; int /*<<< orphan*/  svid; } ;
struct tcpm_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  vdm_state_machine; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ENTER_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpm_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tcpm_port* FUNC6 (struct typec_altmode*) ; 

__attribute__((used)) static int FUNC7(struct typec_altmode *altmode)
{
	struct tcpm_port *port = FUNC6(altmode);
	u32 header;

	FUNC3(&port->lock);
	header = FUNC0(altmode->svid, 1, CMD_ENTER_MODE);
	header |= FUNC1(altmode->mode);

	FUNC5(port, header, NULL, 0);
	FUNC2(port->wq, &port->vdm_state_machine, 0);
	FUNC4(&port->lock);

	return 0;
}