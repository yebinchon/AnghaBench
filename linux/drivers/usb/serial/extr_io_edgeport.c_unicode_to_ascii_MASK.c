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
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(char *string, int buflen,
					__le16 *unicode, int unicode_size)
{
	int i;

	if (buflen <= 0)	/* never happens, but... */
		return;
	--buflen;		/* space for nul */

	for (i = 0; i < unicode_size; i++) {
		if (i >= buflen)
			break;
		string[i] = (char)(FUNC0(unicode[i]));
	}
	string[i] = 0x00;
}