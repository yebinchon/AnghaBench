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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(
	const char *name,
	size_t count,
	u64 *wwpn,
	u64 *wwnn)
{
	unsigned int cnt = count;
	int rc;

	*wwpn = 0;
	*wwnn = 0;

	/* count may include a LF at end of string */
	if (name[cnt-1] == '\n' || name[cnt-1] == 0)
		cnt--;

	/* validate we have enough characters for WWPN */
	if ((cnt != (16+1+16)) || (name[16] != ':'))
		return -EINVAL;

	rc = FUNC0(&name[0], wwpn);
	if (rc != 0)
		return rc;

	rc = FUNC0(&name[17], wwnn);
	if (rc != 0)
		return rc;

	return 0;
}