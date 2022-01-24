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
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (unsigned int) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int*) ; 

int FUNC4(unsigned int cpu)
{
	u32 cache_level = 0;
	struct device_node *prev = NULL, *np = FUNC0(cpu);

	while (np) {
		prev = np;
		FUNC2(np);
		np = FUNC1(np);
	}

	FUNC3(prev, "cache-level", &cache_level);

	return cache_level;
}