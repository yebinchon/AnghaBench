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
struct tty_struct {int dummy; } ;
struct tty_port {int /*<<< orphan*/  itty; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 struct tty_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_ldisc*) ; 
 int FUNC2 (struct tty_ldisc*,unsigned char const*,char*,size_t) ; 
 struct tty_ldisc* FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC4(struct tty_port *port,
					const unsigned char *p,
					const unsigned char *f, size_t count)
{
	int ret;
	struct tty_struct *tty;
	struct tty_ldisc *disc;

	tty = FUNC0(port->itty);
	if (!tty)
		return 0;

	disc = FUNC3(tty);
	if (!disc)
		return 0;

	ret = FUNC2(disc, p, (char *)f, count);

	FUNC1(disc);

	return ret;
}