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
struct iim_priv {int /*<<< orphan*/  clk; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(void *context, unsigned int offset,
			  void *buf, size_t bytes)
{
	struct iim_priv *iim = context;
	int i, ret;
	u8 *buf8 = buf;

	ret = FUNC2(iim->clk);
	if (ret)
		return ret;

	for (i = offset; i < offset + bytes; i++) {
		int bank = i >> 5;
		int reg = i & 0x1f;

		*buf8++ = FUNC3(iim->base + FUNC0(bank) + reg * 4);
	}

	FUNC1(iim->clk);

	return 0;
}