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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static unsigned char FUNC5(unsigned char ack)
{
	int i;
	unsigned char data = 0;

	for (i = 7; i >= 0; i--) {
		/* Set the SCL to Low and SDA to High (Input) */
		FUNC2(0);
		FUNC3(1);
		FUNC4();

		/* Set the SCL High */
		FUNC2(1);
		FUNC4();

		/* Read data bits from SDA */
		data |= (FUNC1() << i);
	}

	if (ack)
		FUNC0();

	/* Set the SCL Low and SDA High */
	FUNC2(0);
	FUNC3(1);

	return data;
}