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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rtw_rx_pkt_stat {int decrypted; int drv_info_sz; int shift; int /*<<< orphan*/  phy_status; scalar_t__ is_c2h; int /*<<< orphan*/  tsf_low; int /*<<< orphan*/  ppdu_cnt; int /*<<< orphan*/  cam_id; int /*<<< orphan*/  rate; int /*<<< orphan*/  pkt_len; int /*<<< orphan*/  crc_err; int /*<<< orphan*/  icv_err; } ;
struct rtw_dev {TYPE_1__* chip; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_2__ {int rx_pkt_desc_sz; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct rtw_rx_pkt_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtw_dev*,int /*<<< orphan*/ *,struct rtw_rx_pkt_stat*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtw_dev*,struct rtw_rx_pkt_stat*,struct ieee80211_hdr*,struct ieee80211_rx_status*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct rtw_dev *rtwdev, u8 *rx_desc,
				   struct rtw_rx_pkt_stat *pkt_stat,
				   struct ieee80211_rx_status *rx_status)
{
	struct ieee80211_hdr *hdr;
	u32 desc_sz = rtwdev->chip->rx_pkt_desc_sz;
	u8 *phy_status = NULL;

	FUNC12(pkt_stat, 0, sizeof(*pkt_stat));

	pkt_stat->phy_status = FUNC5(rx_desc);
	pkt_stat->icv_err = FUNC3(rx_desc);
	pkt_stat->crc_err = FUNC1(rx_desc);
	pkt_stat->decrypted = !FUNC10(rx_desc);
	pkt_stat->is_c2h = FUNC0(rx_desc);
	pkt_stat->pkt_len = FUNC6(rx_desc);
	pkt_stat->drv_info_sz = FUNC2(rx_desc);
	pkt_stat->shift = FUNC9(rx_desc);
	pkt_stat->rate = FUNC8(rx_desc);
	pkt_stat->cam_id = FUNC4(rx_desc);
	pkt_stat->ppdu_cnt = FUNC7(rx_desc);
	pkt_stat->tsf_low = FUNC11(rx_desc);

	/* drv_info_sz is in unit of 8-bytes */
	pkt_stat->drv_info_sz *= 8;

	/* c2h cmd pkt's rx/phy status is not interested */
	if (pkt_stat->is_c2h)
		return;

	hdr = (struct ieee80211_hdr *)(rx_desc + desc_sz + pkt_stat->shift +
				       pkt_stat->drv_info_sz);
	if (pkt_stat->phy_status) {
		phy_status = rx_desc + desc_sz + pkt_stat->shift;
		FUNC13(rtwdev, phy_status, pkt_stat);
	}

	FUNC14(rtwdev, pkt_stat, hdr, rx_status, phy_status);
}