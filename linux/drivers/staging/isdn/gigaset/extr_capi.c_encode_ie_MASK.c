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

/* Variables and functions */
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static int FUNC2(char *in, u8 *out, int maxlen)
{
	int l = 0;
	while (*in) {
		if (!FUNC1(in[0]) || !FUNC1(in[1]) || l >= maxlen)
			return -1;
		out[++l] = (FUNC0(in[0]) << 4) + FUNC0(in[1]);
		in += 2;
	}
	out[0] = l;
	return l;
}