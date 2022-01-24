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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_MAX_SIZE ; 
 int PGPKT_DATA_SIZE ; 
 int PG_STATE_DATA ; 
 int PG_STATE_HEADER ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,scalar_t__*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw, u8 offset, u8 *data)
{
	u8 readstate = PG_STATE_HEADER;

	bool continual = true;

	u8 efuse_data, word_cnts = 0;
	u16 efuse_addr = 0;
	u8 tmpdata[8];

	if (data == NULL)
		return false;
	if (offset > 15)
		return false;

	FUNC3(data, 0xff, PGPKT_DATA_SIZE * sizeof(u8));
	FUNC3(tmpdata, 0xff, PGPKT_DATA_SIZE * sizeof(u8));

	while (continual && (efuse_addr < EFUSE_MAX_SIZE)) {
		if (readstate & PG_STATE_HEADER) {
			if (FUNC0(hw, efuse_addr, &efuse_data)
			    && (efuse_data != 0xFF))
				FUNC1(hw, &efuse_addr,
						      efuse_data, offset,
						      tmpdata, &readstate);
			else
				continual = false;
		} else if (readstate & PG_STATE_DATA) {
			FUNC2(0, tmpdata, data);
			efuse_addr = efuse_addr + (word_cnts * 2) + 1;
			readstate = PG_STATE_HEADER;
		}

	}

	if ((data[0] == 0xff) && (data[1] == 0xff) &&
	    (data[2] == 0xff) && (data[3] == 0xff) &&
	    (data[4] == 0xff) && (data[5] == 0xff) &&
	    (data[6] == 0xff) && (data[7] == 0xff))
		return false;
	else
		return true;

}