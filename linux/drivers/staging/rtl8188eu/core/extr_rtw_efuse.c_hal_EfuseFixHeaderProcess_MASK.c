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
typedef  scalar_t__ u16 ;
struct pgpkt {int word_cnts; int /*<<< orphan*/  offset; int /*<<< orphan*/  word_en; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct adapter*) ; 
 scalar_t__ FUNC1 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct adapter*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 

__attribute__((used)) static bool FUNC5(struct adapter *pAdapter, u8 efuseType, struct pgpkt *pFixPkt, u16 *pAddr)
{
	u8 originaldata[8], badworden = 0;
	u16	efuse_addr = *pAddr;
	u32	PgWriteSuccess = 0;

	FUNC4(originaldata, 0xff, 8);

	if (FUNC1(pAdapter, pFixPkt->offset, originaldata)) {
		/* check if data exist */
		badworden = FUNC3(pAdapter, efuse_addr + 1, pFixPkt->word_en, originaldata);

		if (badworden != 0xf) {	/*  write fail */
			PgWriteSuccess = FUNC2(pAdapter, pFixPkt->offset, badworden, originaldata);

			if (!PgWriteSuccess)
				return false;
			else
				efuse_addr = FUNC0(pAdapter);
		} else {
			efuse_addr = efuse_addr + (pFixPkt->word_cnts * 2) + 1;
		}
	} else {
		efuse_addr = efuse_addr + (pFixPkt->word_cnts * 2) + 1;
	}
	*pAddr = efuse_addr;
	return true;
}