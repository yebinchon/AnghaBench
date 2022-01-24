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
struct clk_rate_round_data {unsigned int min; unsigned int max; unsigned long rate; int /*<<< orphan*/  arg; int /*<<< orphan*/  func; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clk_rate_mult_range_iter ; 
 long FUNC1 (struct clk_rate_round_data*) ; 

long FUNC2(struct clk *clk, unsigned int mult_min,
			       unsigned int mult_max, unsigned long rate)
{
	struct clk_rate_round_data mult_range_round = {
		.min	= mult_min,
		.max	= mult_max,
		.func	= clk_rate_mult_range_iter,
		.arg	= FUNC0(clk),
		.rate	= rate,
	};

	return FUNC1(&mult_range_round);
}