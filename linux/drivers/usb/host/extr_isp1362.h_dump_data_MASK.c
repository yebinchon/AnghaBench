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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ dbg_level ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void __attribute__((unused)) FUNC2(char *buf, int len)
{
	if (dbg_level > 0) {
		int k;
		int lf = 0;

		for (k = 0; k < len; ++k) {
			if (!lf)
				FUNC0(0, "%04x:", k);
			FUNC1(" %02x", ((u8 *) buf)[k]);
			lf = 1;
			if (!k)
				continue;
			if (k % 16 == 15) {
				FUNC1("\n");
				lf = 0;
				continue;
			}
			if (k % 8 == 7)
				FUNC1(" ");
			if (k % 4 == 3)
				FUNC1(" ");
		}
		if (lf)
			FUNC1("\n");
	}
}