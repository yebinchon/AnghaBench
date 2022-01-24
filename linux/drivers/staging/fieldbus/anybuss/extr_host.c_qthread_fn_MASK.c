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
struct kfifo {int dummy; } ;
struct anybuss_host {int /*<<< orphan*/  ind_ab; int /*<<< orphan*/  wq; struct kfifo* qs; } ;

/* Variables and functions */
 size_t FUNC0 (struct kfifo*) ; 
 int /*<<< orphan*/  HZ ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct anybuss_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct anybuss_host*) ; 
 scalar_t__ FUNC5 (struct kfifo*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *data)
{
	struct anybuss_host *cd = data;
	struct kfifo *qs = cd->qs;
	size_t nqs = FUNC0(cd->qs);
	unsigned int ind_ab;

	/*
	 * this kernel thread has exclusive access to the anybus's memory.
	 * only exception: the IND_AB register, which is accessed exclusively
	 * by the interrupt service routine (ISR). This thread must not touch
	 * the IND_AB register, but it does require access to its value.
	 *
	 * the interrupt service routine stores the register's value in
	 * cd->ind_ab (an atomic_t), where we may safely access it, with the
	 * understanding that it can be modified by the ISR at any time.
	 */

	while (!FUNC2()) {
		/*
		 * make a local copy of IND_AB, so we can go around the loop
		 * again in case it changed while processing queues and softint.
		 */
		ind_ab = FUNC1(&cd->ind_ab);
		FUNC3(cd);
		FUNC4(cd);
		FUNC6(cd->wq,
				   (FUNC1(&cd->ind_ab) != ind_ab) ||
				FUNC5(qs, nqs) ||
				FUNC2(),
			HZ);
		/*
		 * time out so even 'stuck' tasks will run eventually,
		 * and can time out.
		 */
	}

	return 0;
}