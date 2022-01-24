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
struct comedi_subdevice {int /*<<< orphan*/  spin_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct comedi_subdevice *s,
					     unsigned int mask,
					     unsigned int bits)
{
	unsigned long flags;

	FUNC2(&s->spin_lock, flags);
	FUNC0(s, mask);
	FUNC1(s, bits & mask);
	FUNC3(&s->spin_lock, flags);
}