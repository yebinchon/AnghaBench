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
struct us_data {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (unsigned char,unsigned char,char const**) ; 
 char* FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data const*,char*,char const*,char const*,...) ; 

void FUNC3(const struct us_data *us,
			 unsigned char key,
			 unsigned char asc,
			 unsigned char ascq)
{
	const char *what, *keystr, *fmt;

	keystr = FUNC1(key);
	what = FUNC0(asc, ascq, &fmt);

	if (keystr == NULL)
		keystr = "(Unknown Key)";
	if (what == NULL)
		what = "(unknown ASC/ASCQ)";

	if (fmt)
		FUNC2(us, "%s: %s (%s%x)\n", keystr, what, fmt, ascq);
	else
		FUNC2(us, "%s: %s\n", keystr, what);
}