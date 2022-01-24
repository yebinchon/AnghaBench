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
typedef  int speed_t ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,int,int) ; 
 int FUNC2 (struct tty_struct*) ; 

__attribute__((used)) static speed_t FUNC3(struct tty_struct *tty)
{
	const speed_t baud_rate = FUNC2(tty);
	static const speed_t supported[] = {
		0, 2400, 4800, 9600, 19200, 38400, 57600, 115200, 153600
	};
	int i;

	for (i = FUNC0(supported) - 1; i >= 0; i--) {
		if (baud_rate == supported[i])
			return baud_rate;
	}

	/* If the baud rate is not supported, switch to the default one */
	FUNC1(tty, 9600, 9600);

	return FUNC2(tty);
}