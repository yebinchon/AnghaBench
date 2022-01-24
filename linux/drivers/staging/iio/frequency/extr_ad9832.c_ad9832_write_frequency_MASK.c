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
struct ad9832_state {int /*<<< orphan*/  freq_msg; int /*<<< orphan*/  spi; void** freq_data; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 unsigned int AD9832_CMD_FRE16BITSW ; 
 unsigned int AD9832_CMD_FRE8BITSW ; 
 unsigned int ADD_SHIFT ; 
 unsigned int CMD_SHIFT ; 
 int EINVAL ; 
 unsigned long FUNC0 (int,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ad9832_state *st,
				  unsigned int addr, unsigned long fout)
{
	unsigned long regval;

	if (fout > (FUNC1(st->mclk) / 2))
		return -EINVAL;

	regval = FUNC0(FUNC1(st->mclk), fout);

	st->freq_data[0] = FUNC2((AD9832_CMD_FRE8BITSW << CMD_SHIFT) |
					(addr << ADD_SHIFT) |
					((regval >> 24) & 0xFF));
	st->freq_data[1] = FUNC2((AD9832_CMD_FRE16BITSW << CMD_SHIFT) |
					((addr - 1) << ADD_SHIFT) |
					((regval >> 16) & 0xFF));
	st->freq_data[2] = FUNC2((AD9832_CMD_FRE8BITSW << CMD_SHIFT) |
					((addr - 2) << ADD_SHIFT) |
					((regval >> 8) & 0xFF));
	st->freq_data[3] = FUNC2((AD9832_CMD_FRE16BITSW << CMD_SHIFT) |
					((addr - 3) << ADD_SHIFT) |
					((regval >> 0) & 0xFF));

	return FUNC3(st->spi, &st->freq_msg);
}