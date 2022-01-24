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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  PDM_ODM_T ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* Array_MP_8723B_PHY_REG ; 
 int BIT28 ; 
 int BIT29 ; 
 scalar_t__ COND_ELSE ; 
 scalar_t__ COND_ENDIF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ODM_COMP_INIT ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  bMaskDWord ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

void FUNC6(PDM_ODM_T pDM_Odm)
{
	u32 i = 0;
	u32 ArrayLen = FUNC0(Array_MP_8723B_PHY_REG);
	u32 *Array = Array_MP_8723B_PHY_REG;

	FUNC3(
		pDM_Odm,
		ODM_COMP_INIT,
		ODM_DBG_LOUD,
		("===> ODM_ReadAndConfig_MP_8723B_PHY_REG\n")
	);

	for (i = 0; i < ArrayLen; i += 2) {
		u32 v1 = Array[i];
		u32 v2 = Array[i+1];

		/*  This (offset, data) pair doesn't care the condition. */
		if (v1 < 0x40000000) {
			FUNC5(pDM_Odm, v1, bMaskDWord, v2);
			continue;
		} else {
			/*  This line is the beginning of branch. */
			bool bMatched = true;
			u8  cCond  = (u8)((v1 & (BIT29|BIT28)) >> 28);

			if (cCond == COND_ELSE) { /*  ELSE, ENDIF */
				bMatched = true;
				FUNC4(v1, v2, i);
			} else if (!FUNC2(pDM_Odm, v1, v2)) {
				bMatched = false;
				FUNC4(v1, v2, i);
				FUNC4(v1, v2, i);
			} else {
				FUNC4(v1, v2, i);
				if (!FUNC1(pDM_Odm, v1, v2))
					bMatched = false;
				else
					bMatched = true;
				FUNC4(v1, v2, i);
			}

			if (!bMatched) {
				/*  Condition isn't matched.
				*   Discard the following (offset, data) pairs.
				*/
				while (v1 < 0x40000000 && i < ArrayLen-2)
					FUNC4(v1, v2, i);

				i -= 2; /*  prevent from for-loop += 2 */
			} else { /*  Configure matched pairs and skip to end of if-else. */
				while (v1 < 0x40000000 && i < ArrayLen-2) {
					FUNC5(pDM_Odm, v1, bMaskDWord, v2);
					FUNC4(v1, v2, i);
				}

				/*  Keeps reading until ENDIF. */
				cCond = (u8)((v1 & (BIT29|BIT28)) >> 28);
				while (cCond != COND_ENDIF && i < ArrayLen-2) {
					FUNC4(v1, v2, i);
					cCond = (u8)((v1 & (BIT29|BIT28)) >> 28);
				}
			}
		}
	}
}