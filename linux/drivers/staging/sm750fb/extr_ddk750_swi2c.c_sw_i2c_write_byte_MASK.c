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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static long FUNC4(unsigned char data)
{
	unsigned char value = data;
	int i;

	/* Sending the data bit by bit */
	for (i = 0; i < 8; i++) {
		/* Set SCL to low */
		FUNC1(0);

		/* Send data bit */
		if ((value & 0x80) != 0)
			FUNC2(1);
		else
			FUNC2(0);

		FUNC3();

		/* Toggle clk line to one */
		FUNC1(1);
		FUNC3();

		/* Shift byte to be sent */
		value = value << 1;
	}

	/* Set the SCL Low and SDA High (prepare to get input) */
	FUNC1(0);
	FUNC2(1);

	/* Set the SCL High for ack */
	FUNC3();
	FUNC1(1);
	FUNC3();

	/* Read SDA, until SDA==0 */
	for (i = 0; i < 0xff; i++) {
		if (!FUNC0())
			break;

		FUNC1(0);
		FUNC3();
		FUNC1(1);
		FUNC3();
	}

	/* Set the SCL Low and SDA High */
	FUNC1(0);
	FUNC2(1);

	if (i < 0xff)
		return 0;
	else
		return -1;
}