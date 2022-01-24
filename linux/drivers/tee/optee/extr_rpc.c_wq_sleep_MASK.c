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
typedef  int /*<<< orphan*/  u32 ;
struct wq_entry {int /*<<< orphan*/  link; int /*<<< orphan*/  c; } ;
struct optee_wait_queue {int /*<<< orphan*/  mu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wq_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct wq_entry* FUNC5 (struct optee_wait_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct optee_wait_queue *wq, u32 key)
{
	struct wq_entry *w = FUNC5(wq, key);

	if (w) {
		FUNC4(&w->c);
		FUNC2(&wq->mu);
		FUNC1(&w->link);
		FUNC3(&wq->mu);
		FUNC0(w);
	}
}