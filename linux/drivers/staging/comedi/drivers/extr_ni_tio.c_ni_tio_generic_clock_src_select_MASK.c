#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ni_gpct {TYPE_1__* counter_dev; } ;
struct TYPE_2__ {int variant; } ;

/* Variables and functions */
 int FUNC0 (struct ni_gpct const*,unsigned int*) ; 
#define  ni_gpct_variant_660x 130 
#define  ni_gpct_variant_e_series 129 
#define  ni_gpct_variant_m_series 128 
 int FUNC1 (struct ni_gpct const*,unsigned int*) ; 

__attribute__((used)) static int FUNC2(const struct ni_gpct *counter,
					   unsigned int *clk_src)
{
	switch (counter->counter_dev->variant) {
	case ni_gpct_variant_e_series:
	case ni_gpct_variant_m_series:
	default:
		return FUNC1(counter, clk_src);
	case ni_gpct_variant_660x:
		return FUNC0(counter, clk_src);
	}
}