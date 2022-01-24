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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (struct device_node const*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(const struct device_node *np,
				       const char *propname,
				       u32 index, u32 *out_value)
{
	const u32 *val = FUNC3(np, propname,
					((index + 1) * sizeof(*out_value)),
					0,
					NULL);

	if (FUNC0(val))
		return FUNC1(val);

	*out_value = FUNC2(((__be32 *)val) + index);
	return 0;
}