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
typedef  int u32 ;
struct tx_desc {int dummy; } ;
struct TYPE_2__ {int dot11PrivacyAlgrthm; } ;
struct adapter {TYPE_1__ securitypriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC8723B_RATE1M ; 
 int /*<<< orphan*/  QSLT_MGNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int) ; 
 int /*<<< orphan*/  TXDESC_SIZE ; 
#define  _AES_ 133 
#define  _NO_PRIVACY_ 132 
#define  _SMS4_ 131 
#define  _TKIP_ 130 
#define  _WEP104_ 129 
#define  _WEP40_ 128 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tx_desc*) ; 

void FUNC15(
	struct adapter *padapter,
	u8 *pDesc,
	u32 BufferLen,
	u8 IsPsPoll,
	u8 IsBTQosNull,
	u8 bDataFrame
)
{
	/*  Clear all status */
	FUNC13(pDesc, 0, TXDESC_SIZE);

	FUNC1(pDesc, 1); /* bFirstSeg; */
	FUNC4(pDesc, 1); /* bLastSeg; */

	FUNC6(pDesc, 0x28); /*  Offset = 32 */

	FUNC8(pDesc, BufferLen); /*  Buffer size + command header */
	FUNC9(pDesc, QSLT_MGNT); /*  Fixed queue of Mgnt queue */

	/*  Set NAVUSEHDR to prevent Ps-poll AId filed to be changed to error vlaue by Hw. */
	if (IsPsPoll) {
		FUNC5(pDesc, 1);
	} else {
		FUNC2(pDesc, 1); /*  Hw set sequence number */
		FUNC3(pDesc, 0);
	}

	if (IsBTQosNull) {
		FUNC0(pDesc, 1);
	}

	FUNC12(pDesc, 1); /*  use data rate which is set by Sw */
	FUNC7((u8 *)pDesc, 1);

	FUNC11(pDesc, DESC8723B_RATE1M);

	/*  */
	/*  Encrypt the data frame if under security mode excepct null data. Suggested by CCW. */
	/*  */
	if (bDataFrame) {
		u32 EncAlg;

		EncAlg = padapter->securitypriv.dot11PrivacyAlgrthm;
		switch (EncAlg) {
		case _NO_PRIVACY_:
			FUNC10(pDesc, 0x0);
			break;
		case _WEP40_:
		case _WEP104_:
		case _TKIP_:
			FUNC10(pDesc, 0x1);
			break;
		case _SMS4_:
			FUNC10(pDesc, 0x2);
			break;
		case _AES_:
			FUNC10(pDesc, 0x3);
			break;
		default:
			FUNC10(pDesc, 0x0);
			break;
		}
	}

	/*  USB interface drop packet if the checksum of descriptor isn't correct. */
	/*  Using this checksum can let hardware recovery from packet bulk out error (e.g. Cancel URC, Bulk out error.). */
	FUNC14((struct tx_desc *)pDesc);
}