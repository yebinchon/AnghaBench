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
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;
struct amd_ntb_dev {TYPE_1__ ntb; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int FUNC0 (struct amd_ntb_dev*,int) ; 
 struct amd_ntb_dev* FUNC1 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ntb_dev *ntb, int idx,
				    phys_addr_t *base, resource_size_t *size)
{
	struct amd_ntb_dev *ndev = FUNC1(ntb);
	int bar;

	bar = FUNC0(ndev, idx);
	if (bar < 0)
		return bar;

	if (base)
		*base = FUNC3(ndev->ntb.pdev, bar);

	if (size)
		*size = FUNC2(ndev->ntb.pdev, bar);

	return 0;
}