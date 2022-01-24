#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mt7601u_tssi_params {int tssi0; int trgt_power; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct mt7601u_dev {int tssi_init_hvga; int tssi_init; int prev_pwr_diff; int /*<<< orphan*/  dev; TYPE_4__* ee; scalar_t__ tssi_init_hvga_offset_db; TYPE_2__ chandef; int /*<<< orphan*/  tssi_read_trig; } ;
typedef  int s8 ;
typedef  char s16 ;
struct TYPE_7__ {char* offset; char slope; } ;
struct TYPE_8__ {TYPE_3__ tssi_data; int /*<<< orphan*/  tssi_enabled; } ;
struct TYPE_5__ {int hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_1 ; 
 int MT_TX_ALC_CFG_1_TEMP_COMP ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int) ; 
 char FUNC5 (char) ; 
 int FUNC6 (struct mt7601u_dev*,int) ; 
 int FUNC7 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 struct mt7601u_tssi_params FUNC8 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7601u_dev*) ; 
 int FUNC10 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mt7601u_dev *dev)
{
	struct mt7601u_tssi_params params;
	int curr_pwr, diff_pwr;
	char tssi_offset;
	s8 tssi_init;
	s16 tssi_m_dc, tssi_db;
	bool hvga;
	u32 val;

	if (!dev->ee->tssi_enabled)
		return 0;

	hvga = FUNC10(dev);
	if (!dev->tssi_read_trig)
		return FUNC6(dev, hvga);

	if (!FUNC9(dev))
		return 0;

	params = FUNC8(dev);

	tssi_init = (hvga ? dev->tssi_init_hvga : dev->tssi_init);
	tssi_m_dc = params.tssi0 - tssi_init;
	tssi_db = FUNC5(tssi_m_dc);
	FUNC2(dev->dev, "tssi dc:%04hx db:%04hx hvga:%d\n",
		tssi_m_dc, tssi_db, hvga);

	if (dev->chandef.chan->hw_value < 5)
		tssi_offset = dev->ee->tssi_data.offset[0];
	else if (dev->chandef.chan->hw_value < 9)
		tssi_offset = dev->ee->tssi_data.offset[1];
	else
		tssi_offset = dev->ee->tssi_data.offset[2];

	if (hvga)
		tssi_db -= dev->tssi_init_hvga_offset_db;

	curr_pwr = tssi_db * dev->ee->tssi_data.slope + (tssi_offset << 9);
	diff_pwr = params.trgt_power - curr_pwr;
	FUNC2(dev->dev, "Power curr:%08x diff:%08x\n", curr_pwr, diff_pwr);

	if (params.tssi0 > 126 && diff_pwr > 0) {
		FUNC3(dev->dev, "Error: TSSI upper saturation\n");
		diff_pwr = 0;
	}
	if (params.tssi0 - tssi_init < 1 && diff_pwr < 0) {
		FUNC3(dev->dev, "Error: TSSI lower saturation\n");
		diff_pwr = 0;
	}

	if ((dev->prev_pwr_diff ^ diff_pwr) < 0 && FUNC1(diff_pwr) < 4096 &&
	    (FUNC1(diff_pwr) > FUNC1(dev->prev_pwr_diff) ||
	     (diff_pwr > 0 && diff_pwr == -dev->prev_pwr_diff)))
		diff_pwr = 0;
	else
		dev->prev_pwr_diff = diff_pwr;

	diff_pwr += (diff_pwr > 0) ? 2048 : -2048;
	diff_pwr /= 4096;

	FUNC2(dev->dev, "final diff: %08x\n", diff_pwr);

	val = FUNC7(dev, MT_TX_ALC_CFG_1);
	curr_pwr = FUNC12(FUNC0(MT_TX_ALC_CFG_1_TEMP_COMP, val));
	diff_pwr += curr_pwr;
	val = (val & ~MT_TX_ALC_CFG_1_TEMP_COMP) | FUNC4(diff_pwr);
	FUNC11(dev, MT_TX_ALC_CFG_1, val);

	return FUNC6(dev, hvga);
}