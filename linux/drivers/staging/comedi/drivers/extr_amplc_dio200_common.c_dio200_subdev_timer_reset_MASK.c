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
 int /*<<< orphan*/  DIO200_TS_CONFIG ; 
 unsigned int TS_CONFIG_CLK_SRC_MASK ; 
 unsigned int TS_CONFIG_RESET ; 
 unsigned int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
				      struct comedi_subdevice *s)
{
	unsigned int clock;

	clock = FUNC0(dev, DIO200_TS_CONFIG) & TS_CONFIG_CLK_SRC_MASK;
	FUNC1(dev, DIO200_TS_CONFIG, clock | TS_CONFIG_RESET);
	FUNC1(dev, DIO200_TS_CONFIG, clock);
}