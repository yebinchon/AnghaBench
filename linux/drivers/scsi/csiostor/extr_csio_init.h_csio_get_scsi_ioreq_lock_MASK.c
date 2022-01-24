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
struct csio_scsim {int /*<<< orphan*/  freelist_lock; } ;
struct csio_ioreq {int dummy; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 struct csio_ioreq* FUNC0 (struct csio_scsim*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline struct csio_ioreq *
FUNC3(struct csio_hw *hw, struct csio_scsim *scsim)
{
	struct csio_ioreq *ioreq;
	unsigned long flags;

	FUNC1(&scsim->freelist_lock, flags);
	ioreq = FUNC0(scsim);
	FUNC2(&scsim->freelist_lock, flags);

	return ioreq;
}