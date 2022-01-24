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
struct s3c2410fb_info {unsigned long clk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,long) ; 

__attribute__((used)) static unsigned int FUNC2(struct s3c2410fb_info *fbi,
					  unsigned long pixclk)
{
	unsigned long clk = fbi->clk_rate;
	unsigned long long div;

	/* pixclk is in picoseconds, our clock is in Hz
	 *
	 * Hz -> picoseconds is / 10^-12
	 */

	div = (unsigned long long)clk * pixclk;
	div >>= 12;			/* div / 2^12 */
	FUNC0(div, 625 * 625UL * 625); /* div / 5^12 */

	FUNC1("pixclk %ld, divisor is %ld\n", pixclk, (long)div);
	return div;
}