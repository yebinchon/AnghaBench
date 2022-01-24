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
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int RTS; } ;
struct port {int update_flow_control; TYPE_1__ ctrl_ul; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct const*) ; 
 struct port* FUNC2 (struct tty_struct const*) ; 

__attribute__((used)) static void FUNC3(const struct tty_struct *tty, int rts)
{
	struct port *port = FUNC2(tty);

	port->ctrl_ul.RTS = rts;
	port->update_flow_control = 1;
	FUNC0(PORT_CTRL, FUNC1(tty));
}