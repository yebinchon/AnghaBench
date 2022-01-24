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

/* Variables and functions */
 int NUM_ORDERS ; 
 int /*<<< orphan*/  FUNC0 (struct ion_page_pool*) ; 

__attribute__((used)) static void FUNC1(struct ion_page_pool **pools)
{
	int i;

	for (i = 0; i < NUM_ORDERS; i++)
		if (pools[i])
			FUNC0(pools[i]);
}