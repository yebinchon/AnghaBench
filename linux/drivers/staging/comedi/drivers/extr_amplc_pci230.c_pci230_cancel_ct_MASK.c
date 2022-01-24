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
struct comedi_device {int /*<<< orphan*/  pacer; } ;

/* Variables and functions */
 int /*<<< orphan*/  I8254_MODE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev, unsigned int ct)
{
	/* Counter ct, 8254 mode 1, initial count not written. */
	FUNC0(dev->pacer, ct, I8254_MODE1);
}