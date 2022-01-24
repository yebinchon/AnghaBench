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
struct clk_rate_round_data {int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC1(unsigned int pos,
				      struct clk_rate_round_data *rounder)
{
	return FUNC0(rounder->arg) * pos;
}