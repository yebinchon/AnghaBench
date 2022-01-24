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
struct rtw_txpwr_idx {int /*<<< orphan*/  pwr_idx_5g; int /*<<< orphan*/  pwr_idx_2g; } ;
struct rtw_power_params {size_t pwr_base; int /*<<< orphan*/  pwr_limit; int /*<<< orphan*/  pwr_offset; } ;
struct rtw_hal {int /*<<< orphan*/ ** tx_pwr_by_rate_offset_5g; int /*<<< orphan*/ ** tx_pwr_by_rate_offset_2g; } ;
struct TYPE_2__ {struct rtw_txpwr_idx* txpwr_idx_table; } ;
struct rtw_dev {TYPE_1__ efuse; struct rtw_hal hal; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 size_t PHY_BAND_2G ; 
 size_t PHY_BAND_5G ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (struct rtw_dev*,int /*<<< orphan*/ *,size_t,size_t,size_t) ; 
 size_t FUNC2 (struct rtw_dev*,int /*<<< orphan*/ *,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,size_t,size_t,size_t,size_t,size_t,size_t) ; 

void FUNC4(struct rtw_dev *rtwdev, u8 path, u8 rate, u8 bw,
			     u8 ch, u8 regd, struct rtw_power_params *pwr_param)
{
	struct rtw_hal *hal = &rtwdev->hal;
	struct rtw_txpwr_idx *pwr_idx;
	u8 group, band;
	u8 *base = &pwr_param->pwr_base;
	s8 *offset = &pwr_param->pwr_offset;
	s8 *limit = &pwr_param->pwr_limit;

	pwr_idx = &rtwdev->efuse.txpwr_idx_table[path];
	group = FUNC0(ch);

	/* base power index for 2.4G/5G */
	if (ch <= 14) {
		band = PHY_BAND_2G;
		*base = FUNC1(rtwdev,
						      &pwr_idx->pwr_idx_2g,
						      bw, rate, group);
		*offset = hal->tx_pwr_by_rate_offset_2g[path][rate];
	} else {
		band = PHY_BAND_5G;
		*base = FUNC2(rtwdev,
						      &pwr_idx->pwr_idx_5g,
						      bw, rate, group);
		*offset = hal->tx_pwr_by_rate_offset_5g[path][rate];
	}

	*limit = FUNC3(rtwdev, band, bw, path,
					    rate, ch, regd);
}