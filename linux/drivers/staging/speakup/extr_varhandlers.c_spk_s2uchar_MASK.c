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
typedef  char u_char ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

char *FUNC2(char *start, char *dest)
{
	int val;

	/* Do not replace with kstrtoul: here we need start to be updated */
	val = FUNC0(FUNC1(start), &start, 10);
	if (*start == ',')
		start++;
	*dest = (u_char)val;
	return start;
}