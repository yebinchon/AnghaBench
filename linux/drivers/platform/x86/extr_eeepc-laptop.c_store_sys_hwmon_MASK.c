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
 int FUNC0 (char const*,int*) ; 

__attribute__((used)) static ssize_t FUNC1(void (*set)(int), const char *buf, size_t count)
{
	int rv, value;

	rv = FUNC0(buf, &value);
	if (rv < 0)
		return rv;
	set(value);
	return count;
}