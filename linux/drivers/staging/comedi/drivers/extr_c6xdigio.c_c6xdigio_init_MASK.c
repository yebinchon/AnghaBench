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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int,int) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev)
{
	/* Initialize the PWM */
	FUNC0(dev, 0x70, 0x00);
	FUNC0(dev, 0x74, 0x80);
	FUNC0(dev, 0x70, 0x00);
	FUNC0(dev, 0x00, 0x80);

	/* Reset the encoders */
	FUNC0(dev, 0x68, 0x00);
	FUNC0(dev, 0x6c, 0x80);
	FUNC0(dev, 0x68, 0x00);
	FUNC0(dev, 0x00, 0x80);
}