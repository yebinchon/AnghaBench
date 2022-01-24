#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dsr; } ;
struct parport_ip32_private {TYPE_2__ regs; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_3__ {struct parport_ip32_private* private_data; } ;

/* Variables and functions */
 unsigned int DSR_TIMEOUT ; 
 unsigned int FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct parport *p)
{
	struct parport_ip32_private * const priv = p->physport->private_data;
	unsigned int cleared;

	if (!(FUNC0(p) & DSR_TIMEOUT))
		cleared = 1;
	else {
		unsigned int r;
		/* To clear timeout some chips require double read */
		FUNC0(p);
		r = FUNC0(p);
		/* Some reset by writing 1 */
		FUNC2(r | DSR_TIMEOUT, priv->regs.dsr);
		/* Others by writing 0 */
		FUNC2(r & ~DSR_TIMEOUT, priv->regs.dsr);

		r = FUNC0(p);
		cleared = !(r & DSR_TIMEOUT);
	}

	FUNC1(p, "(): %s", cleared ? "cleared" : "failed");
	return cleared;
}