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
struct geni_se {int /*<<< orphan*/  clk; } ;
struct spi_geni_master {unsigned int oversampling; int /*<<< orphan*/  dev; struct geni_se se; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned long,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC4 (struct geni_se*,unsigned int,unsigned int*,unsigned long*,int) ; 

__attribute__((used)) static int FUNC5(unsigned int speed_hz,
			struct spi_geni_master *mas,
			unsigned int *clk_idx,
			unsigned int *clk_div)
{
	unsigned long sclk_freq;
	unsigned int actual_hz;
	struct geni_se *se = &mas->se;
	int ret;

	ret = FUNC4(&mas->se,
				speed_hz * mas->oversampling,
				clk_idx, &sclk_freq, false);
	if (ret) {
		FUNC3(mas->dev, "Failed(%d) to find src clk for %dHz\n",
							ret, speed_hz);
		return ret;
	}

	*clk_div = FUNC0(sclk_freq, mas->oversampling * speed_hz);
	actual_hz = sclk_freq / (mas->oversampling * *clk_div);

	FUNC2(mas->dev, "req %u=>%u sclk %lu, idx %d, div %d\n", speed_hz,
				actual_hz, sclk_freq, *clk_idx, *clk_div);
	ret = FUNC1(se->clk, sclk_freq);
	if (ret)
		FUNC3(mas->dev, "clk_set_rate failed %d\n", ret);
	return ret;
}