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
struct visorhba_devdata {int /*<<< orphan*/  privlock; TYPE_1__* pending; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sent; scalar_t__ cmdtype; } ;

/* Variables and functions */
 int MAX_PENDING_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void *FUNC2(struct visorhba_devdata *devdata, int del)
{
	unsigned long flags;
	void *sent;

	if (del >= MAX_PENDING_REQUESTS)
		return NULL;

	FUNC0(&devdata->privlock, flags);
	sent = devdata->pending[del].sent;
	devdata->pending[del].cmdtype = 0;
	devdata->pending[del].sent = NULL;
	FUNC1(&devdata->privlock, flags);

	return sent;
}