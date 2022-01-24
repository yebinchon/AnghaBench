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
struct nubus_dirent {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 unsigned char* FUNC0 (struct nubus_dirent const*) ; 
 unsigned char FUNC1 (unsigned char**,int,int /*<<< orphan*/ ) ; 

unsigned int FUNC2(char *dest, const struct nubus_dirent *dirent,
				unsigned int len)
{
	char *t = dest;
	unsigned char *p = FUNC0(dirent);

	while (len > 1) {
		unsigned char c = FUNC1(&p, 1, dirent->mask);

		if (!c)
			break;
		*t++ = c;
		len--;
	}
	if (len > 0)
		*t = '\0';
	return t - dest;
}