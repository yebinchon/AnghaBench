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
struct comedi_device {scalar_t__ iobase; scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, unsigned int data, int reg)
{
	if (dev->mmio)
		FUNC1(data, dev->mmio + reg);
	else
		FUNC0(data, dev->iobase + reg);
}