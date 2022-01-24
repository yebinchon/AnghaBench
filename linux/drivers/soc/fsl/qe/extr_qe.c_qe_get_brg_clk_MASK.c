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
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int CLK_GRAN ; 
 unsigned int CLK_GRAN_LIMIT ; 
 int brg_clk ; 
 int* FUNC0 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 () ; 

unsigned int FUNC3(void)
{
	struct device_node *qe;
	int size;
	const u32 *prop;
	unsigned int mod;

	if (brg_clk)
		return brg_clk;

	qe = FUNC2();
	if (!qe)
		return brg_clk;

	prop = FUNC0(qe, "brg-frequency", &size);
	if (prop && size == sizeof(*prop))
		brg_clk = *prop;

	FUNC1(qe);

	/* round this if near to a multiple of CLK_GRAN */
	mod = brg_clk % CLK_GRAN;
	if (mod) {
		if (mod < CLK_GRAN_LIMIT)
			brg_clk -= mod;
		else if (mod > (CLK_GRAN - CLK_GRAN_LIMIT))
			brg_clk += CLK_GRAN - mod;
	}

	return brg_clk;
}