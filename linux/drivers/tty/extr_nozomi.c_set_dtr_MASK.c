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
struct tty_struct {int /*<<< orphan*/  index; } ;
struct TYPE_2__ {int DTR; } ;
struct port {int update_flow_control; TYPE_1__ ctrl_ul; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PORT_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct const*) ; 
 struct port* FUNC3 (struct tty_struct const*) ; 

__attribute__((used)) static void FUNC4(const struct tty_struct *tty, int dtr)
{
	struct port *port = FUNC3(tty);

	FUNC0("SETTING DTR index: %d, dtr: %d", tty->index, dtr);

	port->ctrl_ul.DTR = dtr;
	port->update_flow_control = 1;
	FUNC1(PORT_CTRL, FUNC2(tty));
}