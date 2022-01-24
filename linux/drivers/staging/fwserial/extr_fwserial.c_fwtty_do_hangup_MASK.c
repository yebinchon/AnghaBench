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
struct work_struct {int dummy; } ;
struct tty_struct {int dummy; } ;
struct fwtty_port {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  hangup ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct fwtty_port* FUNC2 (struct work_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 struct tty_struct* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	struct fwtty_port *port = FUNC2(work, hangup);
	struct tty_struct *tty;

	FUNC1(FUNC0(50));

	tty = FUNC4(&port->port);
	if (tty)
		FUNC5(tty);
	FUNC3(tty);
}