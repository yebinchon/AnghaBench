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
struct ion_page_pool {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int NUM_ORDERS ; 
 int /*<<< orphan*/  high_order_gfp_flags ; 
 struct ion_page_pool* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ion_page_pool**) ; 
 int /*<<< orphan*/  low_order_gfp_flags ; 
 int* orders ; 

__attribute__((used)) static int FUNC2(struct ion_page_pool **pools)
{
	int i;

	for (i = 0; i < NUM_ORDERS; i++) {
		struct ion_page_pool *pool;
		gfp_t gfp_flags = low_order_gfp_flags;

		if (orders[i] > 4)
			gfp_flags = high_order_gfp_flags;

		pool = FUNC0(gfp_flags, orders[i]);
		if (!pool)
			goto err_create_pool;
		pools[i] = pool;
	}

	return 0;

err_create_pool:
	FUNC1(pools);
	return -ENOMEM;
}