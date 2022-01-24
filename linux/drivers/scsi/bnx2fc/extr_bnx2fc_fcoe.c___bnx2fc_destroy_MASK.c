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
struct fcoe_port {int /*<<< orphan*/  destroy_work; } ;
struct fcoe_ctlr {struct fc_lport* lp; } ;
struct fc_lport {int dummy; } ;
struct bnx2fc_interface {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2fc_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2fc_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2fc_interface*) ; 
 struct fcoe_ctlr* FUNC3 (struct bnx2fc_interface*) ; 
 int /*<<< orphan*/  bnx2fc_wq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fcoe_port* FUNC5 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bnx2fc_interface *interface)
{
	struct fcoe_ctlr *ctlr = FUNC3(interface);
	struct fc_lport *lport = ctlr->lp;
	struct fcoe_port *port = FUNC5(lport);

	FUNC0(interface);
	FUNC2(interface);
	FUNC4(&interface->list);
	FUNC1(interface);
	FUNC6(bnx2fc_wq, &port->destroy_work);
}