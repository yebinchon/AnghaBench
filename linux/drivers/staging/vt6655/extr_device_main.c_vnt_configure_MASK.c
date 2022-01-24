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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct vnt_private {int mc_list_count; TYPE_1__* pcid; scalar_t__ PortOffset; int /*<<< orphan*/  lock; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FIF_ALLMULTI ; 
 unsigned int FIF_BCN_PRBRESP_PROMISC ; 
 unsigned int FIF_OTHER_BSS ; 
 scalar_t__ MAC_REG_MAR0 ; 
 scalar_t__ MAC_REG_RCR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int RCR_BROADCAST ; 
 int RCR_BSSID ; 
 int RCR_MULTICAST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw,
			  unsigned int changed_flags,
			  unsigned int *total_flags, u64 multicast)
{
	struct vnt_private *priv = hw->priv;
	u8 rx_mode = 0;

	*total_flags &= FIF_ALLMULTI | FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC;

	FUNC2(priv->PortOffset + MAC_REG_RCR, &rx_mode);

	FUNC5(&priv->pcid->dev, "rx mode in = %x\n", rx_mode);

	if (changed_flags & FIF_ALLMULTI) {
		if (*total_flags & FIF_ALLMULTI) {
			unsigned long flags;

			FUNC6(&priv->lock, flags);

			if (priv->mc_list_count > 2) {
				FUNC1(priv->PortOffset);

				FUNC4(priv->PortOffset +
					     MAC_REG_MAR0, 0xffffffff);
				FUNC4(priv->PortOffset +
					    MAC_REG_MAR0 + 4, 0xffffffff);

				FUNC0(priv->PortOffset);
			} else {
				FUNC1(priv->PortOffset);

				FUNC4(priv->PortOffset +
					     MAC_REG_MAR0, (u32)multicast);
				FUNC4(priv->PortOffset +
					     MAC_REG_MAR0 + 4,
					     (u32)(multicast >> 32));

				FUNC0(priv->PortOffset);
			}

			FUNC7(&priv->lock, flags);

			rx_mode |= RCR_MULTICAST | RCR_BROADCAST;
		} else {
			rx_mode &= ~(RCR_MULTICAST | RCR_BROADCAST);
		}
	}

	if (changed_flags & (FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC)) {
		rx_mode |= RCR_MULTICAST | RCR_BROADCAST;

		if (*total_flags & (FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC))
			rx_mode &= ~RCR_BSSID;
		else
			rx_mode |= RCR_BSSID;
	}

	FUNC3(priv->PortOffset + MAC_REG_RCR, rx_mode);

	FUNC5(&priv->pcid->dev, "rx mode out= %x\n", rx_mode);
}