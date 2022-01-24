#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcpm_port {int cc_req; TYPE_1__* tcpc; } ;
typedef  enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_cc ) (TYPE_1__*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpm_port*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct tcpm_port *port, enum typec_cc_status cc)
{
	FUNC1(port, "cc:=%d", cc);
	port->cc_req = cc;
	port->tcpc->set_cc(port->tcpc, cc);
}