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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node const*,char const*,size_t,size_t,size_t*) ; 

int FUNC4(const struct device_node *np,
			       const char *propname, u32 *out_values,
			       size_t sz_min, size_t sz_max)
{
	size_t sz, count;
	const __be32 *val = FUNC3(np, propname,
						(sz_min * sizeof(*out_values)),
						(sz_max * sizeof(*out_values)),
						&sz);

	if (FUNC0(val))
		return FUNC1(val);

	if (!sz_max)
		sz = sz_min;
	else
		sz /= sizeof(*out_values);

	count = sz;
	while (count--)
		*out_values++ = FUNC2(val++);

	return sz;
}