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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {TYPE_1__* rx_ring; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ next_rx_rp; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RXDESC ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  REG_RXQ_TXBD_IDX ; 
 int /*<<< orphan*/  RTL_PCI_MAX_RX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rtl_pci* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ) ; 

u16 FUNC6(struct ieee80211_hw *hw, u8 queue_index)
{
	struct rtl_pci *rtlpci = FUNC2(FUNC3(hw));
	struct rtl_priv *rtlpriv = FUNC4(hw);
	u16 read_point, write_point, remind_cnt;
	u32 tmp_4byte;
	static bool start_rx;

	tmp_4byte = FUNC5(rtlpriv, REG_RXQ_TXBD_IDX);
	read_point = (u16)((tmp_4byte>>16) & 0x7ff);
	write_point = (u16)(tmp_4byte & 0x7ff);

	if (write_point != rtlpci->rx_ring[queue_index].next_rx_rp) {
		FUNC0(rtlpriv, COMP_RXDESC, DBG_DMESG,
			 "!!!write point is 0x%x, reg 0x3B4 value is 0x%x\n",
			  write_point, tmp_4byte);
		tmp_4byte = FUNC5(rtlpriv, REG_RXQ_TXBD_IDX);
		read_point = (u16)((tmp_4byte>>16) & 0x7ff);
		write_point = (u16)(tmp_4byte & 0x7ff);
	}

	if (read_point > 0)
		start_rx = true;
	if (!start_rx)
		return 0;

	remind_cnt = FUNC1(read_point, write_point,
				     RTL_PCI_MAX_RX_COUNT);

	if (remind_cnt == 0)
		return 0;

	rtlpci->rx_ring[queue_index].next_rx_rp = write_point;

	return remind_cnt;
}