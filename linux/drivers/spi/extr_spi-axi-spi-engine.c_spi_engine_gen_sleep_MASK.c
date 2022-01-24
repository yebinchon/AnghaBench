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
struct spi_engine_program {int dummy; } ;
struct spi_engine {int /*<<< orphan*/  ref_clk; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_engine_program*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct spi_engine_program *p, bool dry,
	struct spi_engine *spi_engine, unsigned int clk_div, unsigned int delay)
{
	unsigned int spi_clk = FUNC2(spi_engine->ref_clk);
	unsigned int t;

	if (delay == 0)
		return;

	t = FUNC0(delay * spi_clk, (clk_div + 1) * 2);
	while (t) {
		unsigned int n = FUNC3(t, 256U);

		FUNC4(p, dry, FUNC1(n - 1));
		t -= n;
	}
}