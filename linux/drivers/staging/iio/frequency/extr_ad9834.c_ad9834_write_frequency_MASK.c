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
struct ad9834_state {int /*<<< orphan*/  freq_msg; int /*<<< orphan*/  spi; void** freq_data; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int AD9834_FREQ_BITS ; 
 int EINVAL ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ad9834_state *st,
				  unsigned long addr, unsigned long fout)
{
	unsigned long clk_freq;
	unsigned long regval;

	clk_freq = FUNC2(st->mclk);

	if (fout > (clk_freq / 2))
		return -EINVAL;

	regval = FUNC1(clk_freq, fout);

	st->freq_data[0] = FUNC3(addr | (regval &
				       FUNC0(AD9834_FREQ_BITS / 2)));
	st->freq_data[1] = FUNC3(addr | ((regval >>
				       (AD9834_FREQ_BITS / 2)) &
				       FUNC0(AD9834_FREQ_BITS / 2)));

	return FUNC4(st->spi, &st->freq_msg);
}