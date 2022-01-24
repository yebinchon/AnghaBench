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
struct parport {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int ECR_SPP ; 
 int ECR_TST ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*) ; 
 int PARPORT_IRQ_NONE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned long) ; 
 unsigned long FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct parport *pb)
{
	int i;
	unsigned long irqs;

	irqs = FUNC6();

	FUNC1(pb, ECR_SPP << 5); /* Reset FIFO */
	FUNC1(pb, (ECR_TST << 5) | 0x04);
	FUNC1(pb, ECR_TST << 5);

	/* If Full FIFO sure that writeIntrThreshold is generated */
	for (i = 0; i < 1024 && !(FUNC3(FUNC0(pb)) & 0x02) ; i++)
		FUNC4(0xaa, FUNC2(pb));

	pb->irq = FUNC5(irqs);
	FUNC1(pb, ECR_SPP << 5);

	if (pb->irq <= 0)
		pb->irq = PARPORT_IRQ_NONE;

	return pb->irq;
}