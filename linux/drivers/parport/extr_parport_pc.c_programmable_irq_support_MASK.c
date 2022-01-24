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
struct parport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 int ECR_CNF ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,unsigned char) ; 
#define  PARPORT_IRQ_NONE 128 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct parport *pb)
{
	int irq, intrLine;
	unsigned char oecr = FUNC3(FUNC1(pb));
	static const int lookup[8] = {
		PARPORT_IRQ_NONE, 7, 9, 10, 11, 14, 15, 5
	};

	FUNC2(pb, ECR_CNF << 5); /* Configuration MODE */

	intrLine = (FUNC3(FUNC0(pb)) >> 3) & 0x07;
	irq = lookup[intrLine];

	FUNC2(pb, oecr);
	return irq;
}