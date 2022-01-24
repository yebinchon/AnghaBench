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
struct nd_pfn {int dummy; } ;
struct nd_dax {struct nd_pfn nd_pfn; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 struct nd_dax* FUNC3 (struct device*) ; 
 struct nd_pfn* FUNC4 (struct device*) ; 

struct nd_pfn *FUNC5(struct device *dev)
{
	/*
	 * pfn device attributes are re-used by dax device instances, so we
	 * need to be careful to correct device-to-nd_pfn conversion.
	 */
	if (FUNC2(dev))
		return FUNC4(dev);

	if (FUNC1(dev)) {
		struct nd_dax *nd_dax = FUNC3(dev);

		return &nd_dax->nd_pfn;
	}

	FUNC0(1);
	return NULL;
}