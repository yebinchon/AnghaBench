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
struct list_head {int dummy; } ;
struct csio_scsim {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_scsim*,struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void
FUNC3(struct csio_hw *hw, struct csio_scsim *scsim,
			      struct list_head *reqlist, int n)
{
	unsigned long flags;

	FUNC1(&hw->lock, flags);
	FUNC0(scsim, reqlist, n);
	FUNC2(&hw->lock, flags);
}