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
 unsigned int FUNC0 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC3(struct comedi_subdevice *s)
{
	unsigned long flags;
	unsigned int runflags;

	FUNC1(&s->spin_lock, flags);
	runflags = FUNC0(s);
	FUNC2(&s->spin_lock, flags);
	return runflags;
}