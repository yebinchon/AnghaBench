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
struct idr {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC0 (struct idr*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC5(struct idr *idrtable, void *p,
				   spinlock_t *lock)
{
	int id;
	unsigned long flags;

	FUNC1(GFP_KERNEL);
	FUNC3(lock, flags);
	id = FUNC0(idrtable, p, 1, INT_MAX, GFP_NOWAIT);
	FUNC4(lock, flags);
	FUNC2();
	/* failure */
	if (id < 0)
		return 0;
	/* idr_alloc() guarantees > 0 */
	return (unsigned int)(id);
}