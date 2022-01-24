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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EFUSE_MAX_SECTION_88E ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int PGPKT_DATA_SIZE ; 
 int PG_STATE_DATA ; 
 int PG_STATE_HEADER ; 
 scalar_t__ FUNC5 (struct adapter*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 

int FUNC8(struct adapter *pAdapter, u8 offset, u8 *data)
{
	u8 ReadState = PG_STATE_HEADER;
	int	bContinual = true;
	int	bDataEmpty = true;
	u8 efuse_data, word_cnts = 0;
	u16	efuse_addr = 0;
	u8 hoffset = 0, hworden = 0;
	u8 tmpidx = 0;
	u8 tmpdata[8];
	u8 tmp_header = 0;

	if (!data)
		return false;
	if (offset > EFUSE_MAX_SECTION_88E)
		return false;

	FUNC7(data, 0xff, sizeof(u8) * PGPKT_DATA_SIZE);
	FUNC7(tmpdata, 0xff, sizeof(u8) * PGPKT_DATA_SIZE);

	/*  <Roger_TODO> Efuse has been pre-programmed dummy 5Bytes at the end of Efuse by CP. */
	/*  Skip dummy parts to prevent unexpected data read from Efuse. */
	/*  By pass right now. 2009.02.19. */
	while (bContinual && FUNC1(efuse_addr)) {
		/*   Header Read ------------- */
		if (ReadState & PG_STATE_HEADER) {
			if (FUNC5(pAdapter, efuse_addr, &efuse_data) && (efuse_data != 0xFF)) {
				if (FUNC3(efuse_data)) {
					tmp_header = efuse_data;
					efuse_addr++;
					FUNC5(pAdapter, efuse_addr, &efuse_data);
					if (!FUNC0(efuse_data)) {
						hoffset = ((tmp_header & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1);
						hworden = efuse_data & 0x0F;
					} else {
						FUNC2("Error, All words disabled\n");
						efuse_addr++;
						continue;
					}
				} else {
					hoffset = (efuse_data >> 4) & 0x0F;
					hworden =  efuse_data & 0x0F;
				}
				word_cnts = FUNC4(hworden);
				bDataEmpty = true;

				if (hoffset == offset) {
					for (tmpidx = 0; tmpidx < word_cnts * 2; tmpidx++) {
						if (FUNC5(pAdapter, efuse_addr + 1 + tmpidx, &efuse_data)) {
							tmpdata[tmpidx] = efuse_data;
							if (efuse_data != 0xff)
								bDataEmpty = false;
						}
					}
					if (!bDataEmpty) {
						ReadState = PG_STATE_DATA;
					} else {/* read next header */
						efuse_addr = efuse_addr + (word_cnts * 2) + 1;
						ReadState = PG_STATE_HEADER;
					}
				} else {/* read next header */
					efuse_addr = efuse_addr + (word_cnts * 2) + 1;
					ReadState = PG_STATE_HEADER;
				}
			} else {
				bContinual = false;
			}
		} else if (ReadState & PG_STATE_DATA) {
			/*   Data section Read ------------- */
			FUNC6(hworden, tmpdata, data);
			efuse_addr = efuse_addr + (word_cnts * 2) + 1;
			ReadState = PG_STATE_HEADER;
		}
	}

	if ((data[0] == 0xff) && (data[1] == 0xff) && (data[2] == 0xff)  && (data[3] == 0xff) &&
	    (data[4] == 0xff) && (data[5] == 0xff) && (data[6] == 0xff)  && (data[7] == 0xff))
		return false;
	else
		return true;
}