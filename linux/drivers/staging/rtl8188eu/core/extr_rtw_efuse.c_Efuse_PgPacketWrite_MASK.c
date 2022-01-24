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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct pgpkt {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_MAP_LEN_88E ; 
 int /*<<< orphan*/  EFUSE_WIFI ; 
 scalar_t__ FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pgpkt*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pgpkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pgpkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pgpkt*) ; 

bool FUNC5(struct adapter *pAdapter, u8 offset, u8 word_en, u8 *pData)
{
	struct pgpkt	targetPkt;
	u16			startAddr = 0;
	u8 efuseType = EFUSE_WIFI;

	if (FUNC0(pAdapter) >= EFUSE_MAP_LEN_88E)
		return false;

	FUNC1(offset, word_en, pData, &targetPkt);

	if (!FUNC2(pAdapter, efuseType, &startAddr, &targetPkt))
		return false;

	if (!FUNC4(pAdapter, efuseType, &startAddr, &targetPkt))
		return false;

	if (!FUNC3(pAdapter, efuseType, &startAddr, &targetPkt))
		return false;

	return true;
}