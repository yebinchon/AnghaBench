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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static bool FUNC3(u64 base_address)
{
	struct device_node *dn = FUNC1(NULL);
	struct resource res;

	while (dn) {
		if (!FUNC0(dn, 0, &res)) {
			if (res.start == base_address) {
				FUNC2(dn);
				return true;
			}
		}
		dn = FUNC1(dn);
	}

	return false;
}