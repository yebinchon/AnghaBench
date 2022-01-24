#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xenvif_queue {TYPE_1__* vif; } ;
struct TYPE_2__ {scalar_t__ disabled; scalar_t__ stall_timeout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct xenvif_queue*) ; 
 scalar_t__ FUNC2 (struct xenvif_queue*) ; 
 scalar_t__ FUNC3 (struct xenvif_queue*) ; 

__attribute__((used)) static bool FUNC4(struct xenvif_queue *queue)
{
	return FUNC3(queue) ||
		(queue->vif->stall_timeout &&
		 (FUNC2(queue) ||
		  FUNC1(queue))) ||
		FUNC0() ||
		queue->vif->disabled;
}