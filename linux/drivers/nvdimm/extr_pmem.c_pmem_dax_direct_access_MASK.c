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
struct pmem_device {int dummy; } ;
struct dax_device {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 long FUNC0 (struct pmem_device*,int /*<<< orphan*/ ,long,void**,int /*<<< orphan*/ *) ; 
 struct pmem_device* FUNC1 (struct dax_device*) ; 

__attribute__((used)) static long FUNC2(struct dax_device *dax_dev,
		pgoff_t pgoff, long nr_pages, void **kaddr, pfn_t *pfn)
{
	struct pmem_device *pmem = FUNC1(dax_dev);

	return FUNC0(pmem, pgoff, nr_pages, kaddr, pfn);
}