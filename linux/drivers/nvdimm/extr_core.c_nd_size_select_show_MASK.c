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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char*,char*,...) ; 

ssize_t FUNC1(unsigned long current_size,
		const unsigned long *supported, char *buf)
{
	ssize_t len = 0;
	int i;

	for (i = 0; supported[i]; i++)
		if (current_size == supported[i])
			len += FUNC0(buf + len, "[%ld] ", supported[i]);
		else
			len += FUNC0(buf + len, "%ld ", supported[i]);
	len += FUNC0(buf + len, "\n");
	return len;
}