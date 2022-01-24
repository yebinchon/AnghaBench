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
struct wahc {unsigned int rpipes; int /*<<< orphan*/  rpipe_lock; int /*<<< orphan*/  rpipe_bm; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned FUNC4(struct wahc *wa, unsigned rpipe_idx)
{
	unsigned long flags;

	FUNC2(&wa->rpipe_lock, flags);
	rpipe_idx = FUNC0(wa->rpipe_bm, wa->rpipes, rpipe_idx);
	if (rpipe_idx < wa->rpipes)
		FUNC1(rpipe_idx, wa->rpipe_bm);
	FUNC3(&wa->rpipe_lock, flags);

	return rpipe_idx;
}