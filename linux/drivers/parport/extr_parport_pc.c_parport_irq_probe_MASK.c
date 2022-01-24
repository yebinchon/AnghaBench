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
struct parport_pc_private {scalar_t__ ecr; } ;
struct parport {scalar_t__ irq; int modes; struct parport_pc_private* private_data; } ;

/* Variables and functions */
 scalar_t__ PARPORT_IRQ_NONE ; 
 int PARPORT_MODE_EPP ; 
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 scalar_t__ FUNC1 (struct parport*) ; 
 scalar_t__ FUNC2 (struct parport*) ; 
 void* FUNC3 (struct parport*) ; 
 scalar_t__ FUNC4 (struct parport*) ; 
 scalar_t__ FUNC5 (struct parport*) ; 

__attribute__((used)) static int FUNC6(struct parport *pb)
{
	struct parport_pc_private *priv = pb->private_data;

	if (priv->ecr) {
		pb->irq = FUNC5(pb);

		if (pb->irq == PARPORT_IRQ_NONE)
			pb->irq = FUNC2(pb);
	}

	if ((pb->irq == PARPORT_IRQ_NONE) && priv->ecr &&
	    (pb->modes & PARPORT_MODE_EPP))
		pb->irq = FUNC3(pb);

	FUNC0(pb);

	if (pb->irq == PARPORT_IRQ_NONE && (pb->modes & PARPORT_MODE_EPP))
		pb->irq = FUNC3(pb);

	FUNC0(pb);

	if (pb->irq == PARPORT_IRQ_NONE)
		pb->irq = FUNC4(pb);

	if (pb->irq == PARPORT_IRQ_NONE)
		pb->irq = FUNC1(pb);

	return pb->irq;
}