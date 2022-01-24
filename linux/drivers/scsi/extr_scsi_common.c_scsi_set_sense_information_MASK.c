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
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 scalar_t__ FUNC2 (int*,int,int /*<<< orphan*/ ) ; 

int FUNC3(u8 *buf, int buf_len, u64 info)
{
	if ((buf[0] & 0x7f) == 0x72) {
		u8 *ucp, len;

		len = buf[7];
		ucp = (char *)FUNC2(buf, len + 8, 0);
		if (!ucp) {
			buf[7] = len + 0xc;
			ucp = buf + 8 + len;
		}

		if (buf_len < len + 0xc)
			/* Not enough room for info */
			return -EINVAL;

		ucp[0] = 0;
		ucp[1] = 0xa;
		ucp[2] = 0x80; /* Valid bit */
		ucp[3] = 0;
		FUNC1(info, &ucp[4]);
	} else if ((buf[0] & 0x7f) == 0x70) {
		/*
		 * Only set the 'VALID' bit if we can represent the value
		 * correctly; otherwise just fill out the lower bytes and
		 * clear the 'VALID' flag.
		 */
		if (info <= 0xffffffffUL)
			buf[0] |= 0x80;
		else
			buf[0] &= 0x7f;
		FUNC0((u32)info, &buf[3]);
	}

	return 0;
}