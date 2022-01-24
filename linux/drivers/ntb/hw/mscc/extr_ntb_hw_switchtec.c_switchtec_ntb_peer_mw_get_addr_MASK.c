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
struct switchtec_ntb {int nr_direct_mw; } ;
struct ntb_dev {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 struct switchtec_ntb* FUNC0 (struct ntb_dev*) ; 
 int FUNC1 (struct switchtec_ntb*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct switchtec_ntb*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ntb_dev*) ; 

__attribute__((used)) static int FUNC4(struct ntb_dev *ntb, int idx,
					  phys_addr_t *base,
					  resource_size_t *size)
{
	struct switchtec_ntb *sndev = FUNC0(ntb);

	if (idx < sndev->nr_direct_mw)
		return FUNC1(sndev, idx, base, size);
	else if (idx < FUNC3(ntb))
		return FUNC2(sndev, idx, base, size);
	else
		return -EINVAL;
}