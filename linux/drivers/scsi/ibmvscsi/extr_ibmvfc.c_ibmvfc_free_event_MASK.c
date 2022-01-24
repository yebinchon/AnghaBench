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
struct ibmvfc_event_pool {int dummy; } ;
struct ibmvfc_host {int /*<<< orphan*/  free; struct ibmvfc_event_pool pool; } ;
struct ibmvfc_event {int /*<<< orphan*/  queue; int /*<<< orphan*/  free; struct ibmvfc_host* vhost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_event_pool*,struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ibmvfc_event *evt)
{
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_event_pool *pool = &vhost->pool;

	FUNC0(!FUNC2(pool, evt));
	FUNC0(FUNC1(&evt->free) != 1);
	FUNC3(&evt->queue, &vhost->free);
}