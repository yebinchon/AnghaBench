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
 unsigned char const EXTENDED_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char const,...) ; 

int FUNC1(const unsigned char *msg)
{
	int len = 1, i;

	if (msg[0] == EXTENDED_MESSAGE) {
		len = 2 + msg[1];
		if (len == 2)
			len += 256;
		for (i = 0; i < len; ++i)
			FUNC0("%02x ", msg[i]);
	/* Identify */
	} else if (msg[0] & 0x80) {
		FUNC0("%02x ", msg[0]);
	/* Normal One byte */
	} else if ((msg[0] < 0x1f) || (msg[0] == 0x55)) {
		FUNC0("%02x ", msg[0]);
	/* Two byte */
	} else if (msg[0] <= 0x2f) {
		FUNC0("%02x %02x", msg[0], msg[1]);
		len = 2;
	} else 
		FUNC0("%02x ", msg[0]);
	return len;
}