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
struct airq_iv {int flags; struct airq_iv* avail; int /*<<< orphan*/  bits; int /*<<< orphan*/  vector; int /*<<< orphan*/  vector_dma; struct airq_iv* bitlock; struct airq_iv* ptr; struct airq_iv* data; } ;

/* Variables and functions */
 int AIRQ_IV_CACHELINE ; 
 int /*<<< orphan*/  airq_iv_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct airq_iv*) ; 

void FUNC4(struct airq_iv *iv)
{
	FUNC3(iv->data);
	FUNC3(iv->ptr);
	FUNC3(iv->bitlock);
	if (iv->flags & AIRQ_IV_CACHELINE)
		FUNC1(airq_iv_cache, iv->vector, iv->vector_dma);
	else
		FUNC0(iv->vector, FUNC2(iv->bits));
	FUNC3(iv->avail);
	FUNC3(iv);
}