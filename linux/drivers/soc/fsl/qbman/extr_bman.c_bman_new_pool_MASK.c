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
struct bman_pool {int /*<<< orphan*/  bpid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bman_pool*) ; 
 struct bman_pool* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct bman_pool *FUNC4(void)
{
	struct bman_pool *pool = NULL;
	u32 bpid;

	if (FUNC0(&bpid, 1))
		return NULL;

	pool = FUNC3(sizeof(*pool), GFP_KERNEL);
	if (!pool)
		goto err;

	pool->bpid = bpid;

	return pool;
err:
	FUNC1(bpid);
	FUNC2(pool);
	return NULL;
}