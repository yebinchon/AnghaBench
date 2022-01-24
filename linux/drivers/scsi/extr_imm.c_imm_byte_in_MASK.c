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
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int) ; 

__attribute__((used)) static int FUNC2(unsigned short base, char *buffer, int len)
{
	int i;

	/*
	 * The following is based on documented timing signals
	 */
	FUNC1(base, 0x4);
	for (i = len; i; i--) {
		FUNC1(base, 0x26);
		*buffer++ = FUNC0(base);
		FUNC1(base, 0x25);
	}
	return 1;		/* All went well - we hope! */
}