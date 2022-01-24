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
struct knav_queue_inst {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct knav_queue_inst*) ; 

__attribute__((used)) static irqreturn_t FUNC1(int irq, void *_instdata)
{
	struct knav_queue_inst *inst = _instdata;

	FUNC0(inst);
	return IRQ_HANDLED;
}