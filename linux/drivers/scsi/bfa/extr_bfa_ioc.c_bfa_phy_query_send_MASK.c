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
struct bfi_phy_query_req_s {int /*<<< orphan*/  alen; int /*<<< orphan*/  mh; int /*<<< orphan*/  instance; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_phy_s {TYPE_1__ mb; int /*<<< orphan*/  ioc; int /*<<< orphan*/  dbuf_pa; int /*<<< orphan*/  instance; } ;
struct bfa_phy_attr_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_MC_PHY ; 
 int /*<<< orphan*/  BFI_PHY_H2I_QUERY_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *cbarg)
{
	struct bfa_phy_s *phy = cbarg;
	struct bfi_phy_query_req_s *msg =
			(struct bfi_phy_query_req_s *) phy->mb.msg;

	msg->instance = phy->instance;
	FUNC3(msg->mh, BFI_MC_PHY, BFI_PHY_H2I_QUERY_REQ,
		FUNC2(phy->ioc));
	FUNC0(&msg->alen, sizeof(struct bfa_phy_attr_s), phy->dbuf_pa);
	FUNC1(phy->ioc, &phy->mb);
}