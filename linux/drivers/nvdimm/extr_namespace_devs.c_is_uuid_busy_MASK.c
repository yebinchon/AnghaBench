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
typedef  int /*<<< orphan*/  u8 ;
struct nd_pfn {int /*<<< orphan*/ * uuid; } ;
struct nd_namespace_pmem {int /*<<< orphan*/ * uuid; } ;
struct nd_namespace_blk {int /*<<< orphan*/ * uuid; } ;
struct nd_btt {int /*<<< orphan*/ * uuid; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NSLABEL_UUID_LEN ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nd_btt* FUNC5 (struct device*) ; 
 struct nd_namespace_blk* FUNC6 (struct device*) ; 
 struct nd_namespace_pmem* FUNC7 (struct device*) ; 
 struct nd_pfn* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, void *data)
{
	u8 *uuid1 = data, *uuid2 = NULL;

	if (FUNC1(dev)) {
		struct nd_namespace_pmem *nspm = FUNC7(dev);

		uuid2 = nspm->uuid;
	} else if (FUNC0(dev)) {
		struct nd_namespace_blk *nsblk = FUNC6(dev);

		uuid2 = nsblk->uuid;
	} else if (FUNC2(dev)) {
		struct nd_btt *nd_btt = FUNC5(dev);

		uuid2 = nd_btt->uuid;
	} else if (FUNC3(dev)) {
		struct nd_pfn *nd_pfn = FUNC8(dev);

		uuid2 = nd_pfn->uuid;
	}

	if (uuid2 && FUNC4(uuid1, uuid2, NSLABEL_UUID_LEN) == 0)
		return -EBUSY;

	return 0;
}