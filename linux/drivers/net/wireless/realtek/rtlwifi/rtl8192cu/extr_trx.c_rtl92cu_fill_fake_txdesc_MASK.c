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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DESC_RATE1M ; 
 int /*<<< orphan*/  QSLT_MGNT ; 
 int /*<<< orphan*/  RTL_TX_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

void FUNC14(struct ieee80211_hw *hw, u8 *pdesc8,
			      u32 buffer_len, bool is_pspoll)
{
	__le32 *pdesc = (__le32 *)pdesc8;

	/* Clear all status */
	FUNC2(pdesc, 0, RTL_TX_HEADER_SIZE);
	FUNC3(pdesc, 1); /* bFirstSeg; */
	FUNC5(pdesc, 1); /* bLastSeg; */
	FUNC7(pdesc, RTL_TX_HEADER_SIZE); /* Offset = 32 */
	FUNC10(pdesc, buffer_len); /* Buffer size + command hdr */
	FUNC11(pdesc, QSLT_MGNT); /* Fixed queue of Mgnt queue */
	/* Set NAVUSEHDR to prevent Ps-poll AId filed to be changed to error
	 * vlaue by Hw. */
	if (is_pspoll) {
		FUNC6(pdesc, 1);
	} else {
		FUNC4(pdesc, 1); /* Hw set sequence number */
		FUNC9(pdesc, FUNC0(3)); /* set bit3 to 1. */
	}
	FUNC13(pdesc, 1); /* use data rate which is set by Sw */
	FUNC8(pdesc, 1);
	FUNC12(pdesc, DESC_RATE1M);
	FUNC1(pdesc);
}