#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  io; } ;
struct mt7621_pcie {int /*<<< orphan*/  busn; TYPE_1__ offset; int /*<<< orphan*/  mem; int /*<<< orphan*/  io; struct device* dev; } ;
struct list_head {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mt7621_pcie *pcie,
					 struct list_head *res)
{
	struct device *dev = pcie->dev;

	FUNC2(res, &pcie->io, pcie->offset.io);
	FUNC2(res, &pcie->mem, pcie->offset.mem);
	FUNC1(res, &pcie->busn);

	return FUNC0(dev, res);
}