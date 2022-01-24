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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(const __be32 *bp)
{
	__be32 x[4];
	int i;

	FUNC2("AFS XDR: Bad status record\n");
	for (i = 0; i < 5 * 4 * 4; i += 16) {
		FUNC0(x, bp, 16);
		bp += 4;
		FUNC2("%03x: %08x %08x %08x %08x\n",
			  i, FUNC1(x[0]), FUNC1(x[1]), FUNC1(x[2]), FUNC1(x[3]));
	}

	FUNC0(x, bp, 4);
	FUNC2("0x50: %08x\n", FUNC1(x[0]));
}