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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct pgpkt_struct {scalar_t__ word_en; scalar_t__ offset; int /*<<< orphan*/  data; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__* maps; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_EFUSE ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ EFUSE_MAX_SIZE ; 
 size_t EFUSE_OOB_PROTECT_BYTES_LEN ; 
 int /*<<< orphan*/  EFUSE_PG ; 
 int EFUSE_REPEAT_THRESHOLD_ ; 
 int /*<<< orphan*/  FEEPROM ; 
 scalar_t__ PG_STATE_DATA ; 
 scalar_t__ PG_STATE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC4 (struct ieee80211_hw*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,scalar_t__*,scalar_t__,scalar_t__,int*,scalar_t__*,struct pgpkt_struct*,int*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,scalar_t__*,int*,scalar_t__*,struct pgpkt_struct,int*,int*) ; 
 scalar_t__ FUNC8 (struct ieee80211_hw*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 struct rtl_priv* FUNC10 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw,
				 u8 offset, u8 word_en, u8 *data)
{
	struct rtl_priv *rtlpriv = FUNC10(hw);
	struct pgpkt_struct target_pkt;
	u8 write_state = PG_STATE_HEADER;
	int continual = true, dataempty = true, result = true;
	u16 efuse_addr = 0;
	u8 efuse_data;
	u8 target_word_cnts = 0;
	u8 badworden = 0x0F;
	static int repeat_times;

	if (FUNC3(hw) >= (EFUSE_MAX_SIZE -
		rtlpriv->cfg->maps[EFUSE_OOB_PROTECT_BYTES_LEN])) {
		FUNC0(rtlpriv, FEEPROM, EFUSE_PG,
			"efuse_pg_packet_write error\n");
		return false;
	}

	target_pkt.offset = offset;
	target_pkt.word_en = word_en;

	FUNC9(target_pkt.data, 0xFF,  8 * sizeof(u8));

	FUNC5(word_en, data, target_pkt.data);
	target_word_cnts = FUNC2(target_pkt.word_en);

	FUNC0(rtlpriv, FEEPROM, EFUSE_PG, "efuse Power ON\n");

	while (continual && (efuse_addr < (EFUSE_MAX_SIZE -
		rtlpriv->cfg->maps[EFUSE_OOB_PROTECT_BYTES_LEN]))) {
		if (write_state == PG_STATE_HEADER) {
			dataempty = true;
			badworden = 0x0F;
			FUNC0(rtlpriv, FEEPROM, EFUSE_PG,
				"efuse PG_STATE_HEADER\n");

			if (FUNC4(hw, efuse_addr, &efuse_data) &&
			    (efuse_data != 0xFF))
				FUNC6(hw, &efuse_addr,
						       efuse_data, offset,
						       &continual,
						       &write_state,
						       &target_pkt,
						       &repeat_times, &result,
						       word_en);
			else
				FUNC7(hw, &efuse_addr,
						       &continual,
						       &write_state,
						       target_pkt,
						       &repeat_times,
						       &result);

		} else if (write_state == PG_STATE_DATA) {
			FUNC0(rtlpriv, FEEPROM, EFUSE_PG,
				"efuse PG_STATE_DATA\n");
			badworden =
			    FUNC8(hw, efuse_addr + 1,
						    target_pkt.word_en,
						    target_pkt.data);

			if ((badworden & 0x0F) == 0x0F) {
				continual = false;
			} else {
				efuse_addr =
				    efuse_addr + (2 * target_word_cnts) + 1;

				target_pkt.offset = offset;
				target_pkt.word_en = badworden;
				target_word_cnts =
				    FUNC2(target_pkt.
							      word_en);
				write_state = PG_STATE_HEADER;
				repeat_times++;
				if (repeat_times > EFUSE_REPEAT_THRESHOLD_) {
					continual = false;
					result = false;
				}
				FUNC0(rtlpriv, FEEPROM, EFUSE_PG,
					"efuse PG_STATE_HEADER-3\n");
			}
		}
	}

	if (efuse_addr >= (EFUSE_MAX_SIZE -
		rtlpriv->cfg->maps[EFUSE_OOB_PROTECT_BYTES_LEN])) {
		FUNC1(rtlpriv, COMP_EFUSE, DBG_LOUD,
			 "efuse_addr(%#x) Out of size!!\n", efuse_addr);
	}

	return true;
}