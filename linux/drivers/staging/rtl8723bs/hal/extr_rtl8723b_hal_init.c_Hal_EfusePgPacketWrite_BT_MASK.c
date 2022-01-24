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
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  PGPKT_STRUCT ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_BT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC5(
	struct adapter *padapter,
	u8 offset,
	u8 word_en,
	u8 *pData,
	bool bPseudoTest
)
{
	PGPKT_STRUCT targetPkt;
	u16 startAddr = 0;
	u8 efuseType = EFUSE_BT;

	if (!FUNC2(padapter, efuseType, bPseudoTest))
		return false;

	FUNC0(offset, word_en, pData, &targetPkt);

	if (!FUNC1(padapter, efuseType, &startAddr, &targetPkt, bPseudoTest))
		return false;

	if (!FUNC4(padapter, efuseType, &startAddr, &targetPkt, bPseudoTest))
		return false;

	if (!FUNC3(padapter, efuseType, &startAddr, &targetPkt, bPseudoTest))
		return false;

	return true;
}