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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  iucvMagic_ascii ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  setup ; 
 char* FUNC5 (char const*,char) ; 
 char FUNC6 (char const) ; 

__attribute__((used)) static int FUNC7(const char *buf, size_t count, char *username,
			      char *userdata)
{
	const char *p;
	int i;

	p = FUNC5(buf, '.');
	if ((p && ((count > 26) ||
		   ((p - buf) > 8) ||
		   (buf + count - p > 18))) ||
	    (!p && (count > 9))) {
		FUNC1(setup, 2, "conn_write: too long\n");
		return -EINVAL;
	}

	for (i = 0, p = buf; i < 8 && *p && *p != '.'; i++, p++) {
		if (FUNC3(*p) || *p == '$') {
			username[i] = FUNC6(*p);
			continue;
		}
		if (*p == '\n')
			/* trailing lf, grr */
			break;
		FUNC2(setup, 2,
			       "conn_write: invalid character %02x\n", *p);
		return -EINVAL;
	}
	while (i < 8)
		username[i++] = ' ';
	username[8] = '\0';

	if (*p == '.') {
		p++;
		for (i = 0; i < 16 && *p; i++, p++) {
			if (*p == '\n')
				break;
			userdata[i] = FUNC6(*p);
		}
		while (i > 0 && i < 16)
			userdata[i++] = ' ';
	} else
		FUNC4(userdata, iucvMagic_ascii, 16);
	userdata[16] = '\0';
	FUNC0(userdata, 16);

	return 0;
}