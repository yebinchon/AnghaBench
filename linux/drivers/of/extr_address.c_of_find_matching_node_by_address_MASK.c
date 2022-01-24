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
typedef  scalar_t__ u64 ;
struct resource {scalar_t__ start; } ;
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct device_node* FUNC1 (struct device_node*,struct of_device_id const*) ; 

struct device_node *FUNC2(struct device_node *from,
					const struct of_device_id *matches,
					u64 base_address)
{
	struct device_node *dn = FUNC1(from, matches);
	struct resource res;

	while (dn) {
		if (!FUNC0(dn, 0, &res) &&
		    res.start == base_address)
			return dn;

		dn = FUNC1(dn, matches);
	}

	return NULL;
}