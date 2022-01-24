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
struct xenvif_mcast_addr {int /*<<< orphan*/  entry; int /*<<< orphan*/  addr; } ;
struct xenvif {scalar_t__ fe_mcast_count; int /*<<< orphan*/  fe_mcast_addr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ XEN_NETBK_MCAST_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct xenvif_mcast_addr* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct xenvif *vif, const u8 *addr)
{
	struct xenvif_mcast_addr *mcast;

	if (vif->fe_mcast_count == XEN_NETBK_MCAST_MAX) {
		if (FUNC3())
			FUNC4(vif->dev,
				   "Too many multicast addresses\n");
		return -ENOSPC;
	}

	mcast = FUNC1(sizeof(*mcast), GFP_ATOMIC);
	if (!mcast)
		return -ENOMEM;

	FUNC0(mcast->addr, addr);
	FUNC2(&mcast->entry, &vif->fe_mcast_addr);
	vif->fe_mcast_count++;

	return 0;
}