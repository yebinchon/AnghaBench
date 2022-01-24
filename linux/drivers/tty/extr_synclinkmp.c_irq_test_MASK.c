#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int port_num; int irq_occurred; int /*<<< orphan*/  lock; int /*<<< orphan*/  init_error; } ;
typedef  TYPE_1__ SLMP_INFO ;

/* Variables and functions */
 scalar_t__ BIT4 ; 
 scalar_t__ BIT6 ; 
 int /*<<< orphan*/  DiagStatus_IrqFailure ; 
 unsigned char IER2 ; 
 scalar_t__ TCONR ; 
 scalar_t__ TEPR ; 
 unsigned char TIMER0 ; 
 unsigned char TIMER2 ; 
 scalar_t__ TMCS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned char,int) ; 

__attribute__((used)) static bool FUNC6(SLMP_INFO *info)
{
	unsigned long timeout;
	unsigned long flags;

	unsigned char timer = (info->port_num & 1) ? TIMER2 : TIMER0;

	FUNC2(&info->lock,flags);
	FUNC1(info);

	/* assume failure */
	info->init_error = DiagStatus_IrqFailure;
	info->irq_occurred = false;

	/* setup timer0 on SCA0 to interrupt */

	/* IER2<7..4> = timer<3..0> interrupt enables (1=enabled) */
	FUNC4(info, IER2, (unsigned char)((info->port_num & 1) ? BIT6 : BIT4));

	FUNC4(info, (unsigned char)(timer + TEPR), 0);	/* timer expand prescale */
	FUNC5(info, (unsigned char)(timer + TCONR), 1);	/* timer constant */


	/* TMCS, Timer Control/Status Register
	 *
	 * 07      CMF, Compare match flag (read only) 1=match
	 * 06      ECMI, CMF Interrupt Enable: 1=enabled
	 * 05      Reserved, must be 0
	 * 04      TME, Timer Enable
	 * 03..00  Reserved, must be 0
	 *
	 * 0101 0000
	 */
	FUNC4(info, (unsigned char)(timer + TMCS), 0x50);

	FUNC3(&info->lock,flags);

	timeout=100;
	while( timeout-- && !info->irq_occurred ) {
		FUNC0(10);
	}

	FUNC2(&info->lock,flags);
	FUNC1(info);
	FUNC3(&info->lock,flags);

	return info->irq_occurred;
}