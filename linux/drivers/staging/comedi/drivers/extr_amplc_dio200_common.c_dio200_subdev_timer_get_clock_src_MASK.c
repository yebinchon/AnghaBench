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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  DIO200_TS_CONFIG ; 
 unsigned int TS_CONFIG_CLK_SRC_MASK ; 
 unsigned int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 unsigned int* ts_clock_period ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
					      struct comedi_subdevice *s,
					      unsigned int *src,
					      unsigned int *period)
{
	unsigned int clk;

	clk = FUNC1(dev, DIO200_TS_CONFIG) & TS_CONFIG_CLK_SRC_MASK;
	*src = clk;
	*period = (clk < FUNC0(ts_clock_period)) ?
		  ts_clock_period[clk] : 0;
}