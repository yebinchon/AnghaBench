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
 int EIO ; 
 char* FUNC0 (char**,char*) ; 

__attribute__((used)) static int FUNC1(char *buf, char **a, char **b, char **c, char **d)
{
	*a = FUNC0(&buf, ":");
	if (!*a)
		return -EIO;

	*b = FUNC0(&buf, ":\n");
	if (!*b)
		return -EIO;

	*c = FUNC0(&buf, ":\n");
	if (!*c)
		return -EIO;

	if (d)
		*d = FUNC0(&buf, ":\n");

	return 0;
}