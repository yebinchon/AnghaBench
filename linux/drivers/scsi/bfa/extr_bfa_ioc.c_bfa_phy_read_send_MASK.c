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
typedef  scalar_t__ u32 ;
struct bfi_phy_read_req_s {int /*<<< orphan*/  alen; int /*<<< orphan*/  mh; void* length; void* offset; int /*<<< orphan*/  instance; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_phy_s {scalar_t__ residue; TYPE_1__ mb; int /*<<< orphan*/  ioc; int /*<<< orphan*/  dbuf_pa; scalar_t__ offset; scalar_t__ addr_off; int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 scalar_t__ BFA_PHY_DMA_BUF_SZ ; 
 int /*<<< orphan*/  BFI_MC_PHY ; 
 int /*<<< orphan*/  BFI_PHY_H2I_READ_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(void *cbarg)
{
	struct bfa_phy_s *phy = cbarg;
	struct bfi_phy_read_req_s *msg =
			(struct bfi_phy_read_req_s *) phy->mb.msg;
	u32	len;

	msg->instance = phy->instance;
	msg->offset = FUNC4(phy->addr_off + phy->offset);
	len = (phy->residue < BFA_PHY_DMA_BUF_SZ) ?
			phy->residue : BFA_PHY_DMA_BUF_SZ;
	msg->length = FUNC4(len);
	FUNC3(msg->mh, BFI_MC_PHY, BFI_PHY_H2I_READ_REQ,
		FUNC2(phy->ioc));
	FUNC0(&msg->alen, len, phy->dbuf_pa);
	FUNC1(phy->ioc, &phy->mb);
}