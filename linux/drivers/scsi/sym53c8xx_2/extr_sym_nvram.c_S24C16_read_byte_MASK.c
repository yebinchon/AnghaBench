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
typedef  int u_char ;
struct sym_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sym_device*,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_device*,int,int*,int*) ; 

__attribute__((used)) static void FUNC2(struct sym_device *np, u_char *read_data, u_char ack_data, 
			    u_char *gpreg, u_char *gpcntl)
{
	int x;
	u_char read_bit;

	*read_data = 0;
	for (x = 0; x < 8; x++) {
		FUNC0(np, &read_bit, 1, gpreg);
		*read_data |= ((read_bit & 0x01) << (7 - x));
	}

	FUNC1(np, ack_data, gpreg, gpcntl);
}