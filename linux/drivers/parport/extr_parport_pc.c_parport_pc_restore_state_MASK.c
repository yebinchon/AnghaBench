#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned char ctr; int /*<<< orphan*/  ecr; } ;
struct TYPE_5__ {TYPE_3__ pc; } ;
struct parport_state {TYPE_2__ u; } ;
struct parport_pc_private {unsigned char ctr_writable; unsigned char ctr; scalar_t__ ecr; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_4__ {struct parport_pc_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct parport *p,
						struct parport_state *s)
{
	struct parport_pc_private *priv = p->physport->private_data;
	register unsigned char c = s->u.pc.ctr & priv->ctr_writable;
	FUNC2(c, FUNC0(p));
	priv->ctr = c;
	if (priv->ecr)
		FUNC1(p, s->u.pc.ecr);
}