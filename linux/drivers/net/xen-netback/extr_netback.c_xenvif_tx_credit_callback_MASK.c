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
struct xenvif_queue {int dummy; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  credit_timeout ; 
 struct xenvif_queue* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct xenvif_queue* queue ; 
 int /*<<< orphan*/  FUNC1 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct xenvif_queue*) ; 

void FUNC3(struct timer_list *t)
{
	struct xenvif_queue *queue = FUNC0(queue, t, credit_timeout);
	FUNC1(queue);
	FUNC2(queue);
}