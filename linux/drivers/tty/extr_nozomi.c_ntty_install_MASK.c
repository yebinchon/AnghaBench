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
struct tty_struct {struct port* driver_data; } ;
struct tty_driver {int dummy; } ;
struct port {int dummy; } ;
struct nozomi {scalar_t__ state; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ NOZOMI_STATE_READY ; 
 struct nozomi* FUNC0 (struct tty_struct*) ; 
 struct port* FUNC1 (struct tty_struct*) ; 
 int FUNC2 (struct tty_driver*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC3(struct tty_driver *driver, struct tty_struct *tty)
{
	struct port *port = FUNC1(tty);
	struct nozomi *dc = FUNC0(tty);
	int ret;
	if (!port || !dc || dc->state != NOZOMI_STATE_READY)
		return -ENODEV;
	ret = FUNC2(driver, tty);
	if (ret == 0)
		tty->driver_data = port;
	return ret;
}