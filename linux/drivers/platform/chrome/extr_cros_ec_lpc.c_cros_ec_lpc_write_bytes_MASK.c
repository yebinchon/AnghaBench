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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,unsigned int) ; 

__attribute__((used)) static u8 FUNC1(unsigned int offset, unsigned int length,
				  const u8 *msg)
{
	int sum = 0;
	int i;

	for (i = 0; i < length; ++i) {
		FUNC0(msg[i], offset + i);
		sum += msg[i];
	}

	/* Return checksum of all bytes written */
	return sum;
}