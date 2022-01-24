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
typedef  int /*<<< orphan*/  u32 ;
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {TYPE_1__* peer_reg; scalar_t__ peer_mmio; } ;
struct TYPE_2__ {scalar_t__ spad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_ntb_dev*,int,scalar_t__) ; 
 struct intel_ntb_dev* FUNC1 (struct ntb_dev*) ; 

u32 FUNC2(struct ntb_dev *ntb, int pidx, int sidx)
{
	struct intel_ntb_dev *ndev = FUNC1(ntb);

	return FUNC0(ndev, sidx,
			      ndev->peer_mmio +
			      ndev->peer_reg->spad);
}