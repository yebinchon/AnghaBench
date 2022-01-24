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
struct mtu3_ep {int /*<<< orphan*/  epnum; int /*<<< orphan*/  is_in; struct mtu3* mtu; } ;
struct mtu3 {int /*<<< orphan*/  mac_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U3D_EP_RST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mtu3_ep *mep)
{
	struct mtu3 *mtu = mep->mtu;
	u32 rst_bit = FUNC0(mep->is_in, mep->epnum);

	FUNC2(mtu->mac_base, U3D_EP_RST, rst_bit);
	FUNC1(mtu->mac_base, U3D_EP_RST, rst_bit);
}