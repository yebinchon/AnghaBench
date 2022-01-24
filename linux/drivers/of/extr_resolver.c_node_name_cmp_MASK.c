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
struct device_node {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char const*) ; 

__attribute__((used)) static int FUNC2(const struct device_node *dn1,
		const struct device_node *dn2)
{
	const char *n1 = FUNC0(dn1->full_name);
	const char *n2 = FUNC0(dn2->full_name);

	return FUNC1(n1, n2);
}