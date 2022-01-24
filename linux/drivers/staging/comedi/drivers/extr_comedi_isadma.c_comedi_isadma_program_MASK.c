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
struct comedi_isadma_desc {int /*<<< orphan*/  chan; int /*<<< orphan*/  size; int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct comedi_isadma_desc *desc)
{
	unsigned long flags;

	flags = FUNC0();
	FUNC1(desc->chan);
	FUNC6(desc->chan, desc->mode);
	FUNC4(desc->chan, desc->hw_addr);
	FUNC5(desc->chan, desc->size);
	FUNC2(desc->chan);
	FUNC3(flags);
}