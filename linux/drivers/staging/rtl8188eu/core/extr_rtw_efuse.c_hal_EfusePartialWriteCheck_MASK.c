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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct pgpkt {int offset; int word_en; int word_cnts; int /*<<< orphan*/  data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EFUSE_OOB_PROTECT_BYTES_88E ; 
 int EFUSE_REAL_CONTENT_LEN ; 
 int EFUSE_REAL_CONTENT_LEN_88E ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct adapter*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HW_VAR_EFUSE_BYTES ; 
 scalar_t__ FUNC5 (struct adapter*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (struct pgpkt*,struct pgpkt*,int*) ; 

__attribute__((used)) static bool FUNC9(struct adapter *pAdapter, u8 efuseType, u16 *pAddr, struct pgpkt *pTargetPkt)
{
	bool ret = false;
	u8 i, efuse_data = 0, cur_header = 0;
	u8 matched_wden = 0, badworden = 0;
	u16 startAddr = 0;
	u16 efuse_max_available_len =
		EFUSE_REAL_CONTENT_LEN_88E - EFUSE_OOB_PROTECT_BYTES_88E;
	struct pgpkt curPkt;

	FUNC7(pAdapter, HW_VAR_EFUSE_BYTES, (u8 *)&startAddr);
	startAddr %= EFUSE_REAL_CONTENT_LEN;

	while (1) {
		if (startAddr >= efuse_max_available_len) {
			ret = false;
			break;
		}

		if (FUNC5(pAdapter, startAddr, &efuse_data) && (efuse_data != 0xFF)) {
			if (FUNC1(efuse_data)) {
				cur_header = efuse_data;
				startAddr++;
				FUNC5(pAdapter, startAddr, &efuse_data);
				if (FUNC0(efuse_data)) {
					ret = false;
					break;
				} else {
					curPkt.offset = ((cur_header & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1);
					curPkt.word_en = efuse_data & 0x0F;
				}
			} else {
				cur_header  =  efuse_data;
				curPkt.offset = (cur_header >> 4) & 0x0F;
				curPkt.word_en = cur_header & 0x0F;
			}

			curPkt.word_cnts = FUNC2(curPkt.word_en);
			/*  if same header is found but no data followed */
			/*  write some part of data followed by the header. */
			if ((curPkt.offset == pTargetPkt->offset) &&
			    (!FUNC6(pAdapter, curPkt.word_cnts, startAddr + 1)) &&
			    FUNC8(pTargetPkt, &curPkt, &matched_wden)) {
				/*  Here to write partial data */
				badworden = FUNC4(pAdapter, startAddr + 1, matched_wden, pTargetPkt->data);
				if (badworden != 0x0F) {
					u32	PgWriteSuccess = 0;
					/*  if write fail on some words, write these bad words again */

					PgWriteSuccess = FUNC3(pAdapter, pTargetPkt->offset, badworden, pTargetPkt->data);

					if (!PgWriteSuccess) {
						ret = false;	/*  write fail, return */
						break;
					}
				}
				/*  partial write ok, update the target packet for later use */
				for (i = 0; i < 4; i++) {
					if ((matched_wden & (0x1 << i)) == 0)	/*  this word has been written */
						pTargetPkt->word_en |= (0x1 << i);	/*  disable the word */
				}
				pTargetPkt->word_cnts = FUNC2(pTargetPkt->word_en);
			}
			/*  read from next header */
			startAddr = startAddr + (curPkt.word_cnts * 2) + 1;
		} else {
			/*  not used header, 0xff */
			*pAddr = startAddr;
			ret = true;
			break;
		}
	}
	return ret;
}