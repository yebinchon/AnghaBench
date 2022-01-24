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
struct list_head {int dummy; } ;
struct TYPE_2__ {int n_free_ddp; } ;
struct csio_scsim {TYPE_1__ stats; int /*<<< orphan*/  ddp_freelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1(struct csio_scsim *scm, struct list_head *reqlist,
			 int n)
{
	FUNC0(reqlist, &scm->ddp_freelist);
	scm->stats.n_free_ddp += n;
}