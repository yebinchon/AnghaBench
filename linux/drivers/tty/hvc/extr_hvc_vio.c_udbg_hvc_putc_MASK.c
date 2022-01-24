#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int proto; } ;

/* Variables and functions */
#define  HV_PROTOCOL_HVSI 129 
#define  HV_PROTOCOL_RAW 128 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__** hvterm_privs ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(char c)
{
	int count = -1;
	unsigned char bounce_buffer[16];

	if (!hvterm_privs[0])
		return;

	if (c == '\n')
		FUNC2('\r');

	do {
		switch(hvterm_privs[0]->proto) {
		case HV_PROTOCOL_RAW:
			/*
			 * hvterm_raw_put_chars requires at least a 16-byte
			 * buffer, so go via the bounce buffer
			 */
			bounce_buffer[0] = c;
			count = FUNC1(0, bounce_buffer, 1);
			break;
		case HV_PROTOCOL_HVSI:
			count = FUNC0(0, &c, 1);
			break;
		}
	} while(count == 0);
}