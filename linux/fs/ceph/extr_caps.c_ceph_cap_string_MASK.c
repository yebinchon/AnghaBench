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
 int CEPH_CAP_PIN ; 
 int CEPH_CAP_SAUTH ; 
 int CEPH_CAP_SFILE ; 
 int CEPH_CAP_SLINK ; 
 int CEPH_CAP_SXATTR ; 
 scalar_t__ MAX_CAP_STR ; 
 char** cap_str ; 
 int /*<<< orphan*/  cap_str_lock ; 
 char* FUNC0 (char*,int) ; 
 scalar_t__ last_cap_str ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

const char *FUNC3(int caps)
{
	int i;
	char *s;
	int c;

	FUNC1(&cap_str_lock);
	i = last_cap_str++;
	if (last_cap_str == MAX_CAP_STR)
		last_cap_str = 0;
	FUNC2(&cap_str_lock);

	s = cap_str[i];

	if (caps & CEPH_CAP_PIN)
		*s++ = 'p';

	c = (caps >> CEPH_CAP_SAUTH) & 3;
	if (c) {
		*s++ = 'A';
		s = FUNC0(s, c);
	}

	c = (caps >> CEPH_CAP_SLINK) & 3;
	if (c) {
		*s++ = 'L';
		s = FUNC0(s, c);
	}

	c = (caps >> CEPH_CAP_SXATTR) & 3;
	if (c) {
		*s++ = 'X';
		s = FUNC0(s, c);
	}

	c = caps >> CEPH_CAP_SFILE;
	if (c) {
		*s++ = 'F';
		s = FUNC0(s, c);
	}

	if (s == cap_str[i])
		*s++ = '-';
	*s = 0;
	return cap_str[i];
}