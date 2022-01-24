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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct rtl_priv {int dummy; } ;
struct pgpkt_struct {int offset; int word_en; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_PG ; 
 int EFUSE_REPEAT_THRESHOLD_ ; 
 int /*<<< orphan*/  FEEPROM ; 
 int PG_STATE_DATA ; 
 int PG_STATE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (struct ieee80211_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,int,int*) ; 
 int FUNC7 (struct ieee80211_hw*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw, u16 *efuse_addr,
				   int *continual, u8 *write_state,
				   struct pgpkt_struct target_pkt,
				   int *repeat_times, int *result)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct pgpkt_struct tmp_pkt;
	u8 pg_header;
	u8 tmp_header;
	u8 originaldata[8 * sizeof(u8)];
	u8 tmp_word_cnts;
	u8 badworden = 0x0F;

	pg_header = ((target_pkt.offset << 4) & 0xf0) | target_pkt.word_en;
	FUNC4(hw, *efuse_addr, pg_header);
	FUNC3(hw, *efuse_addr, &tmp_header);

	if (tmp_header == pg_header) {
		*write_state = PG_STATE_DATA;
	} else if (tmp_header == 0xFF) {
		*write_state = PG_STATE_HEADER;
		*repeat_times += 1;
		if (*repeat_times > EFUSE_REPEAT_THRESHOLD_) {
			*continual = false;
			*result = false;
		}
	} else {
		tmp_pkt.offset = (tmp_header >> 4) & 0x0F;
		tmp_pkt.word_en = tmp_header & 0x0F;

		tmp_word_cnts = FUNC1(tmp_pkt.word_en);

		FUNC8(originaldata, 0xff,  8 * sizeof(u8));

		if (FUNC5(hw, tmp_pkt.offset, originaldata)) {
			badworden = FUNC7(hw,
							    *efuse_addr + 1,
							    tmp_pkt.word_en,
							    originaldata);

			if (0x0F != (badworden & 0x0F)) {
				u8 reorg_offset = tmp_pkt.offset;
				u8 reorg_worden = badworden;

				FUNC6(hw, reorg_offset,
						      reorg_worden,
						      originaldata);
				*efuse_addr = FUNC2(hw);
			} else {
				*efuse_addr = *efuse_addr +
					      (tmp_word_cnts * 2) + 1;
			}
		} else {
			*efuse_addr = *efuse_addr + (tmp_word_cnts * 2) + 1;
		}

		*write_state = PG_STATE_HEADER;
		*repeat_times += 1;
		if (*repeat_times > EFUSE_REPEAT_THRESHOLD_) {
			*continual = false;
			*result = false;
		}

		FUNC0(rtlpriv, FEEPROM, EFUSE_PG,
			"efuse PG_STATE_HEADER-2\n");
	}
}