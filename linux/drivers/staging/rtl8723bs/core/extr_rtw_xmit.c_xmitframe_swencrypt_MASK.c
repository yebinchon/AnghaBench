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
struct pkt_attrib {int encrypt; scalar_t__ bswenc; } ;
struct xmit_frame {struct pkt_attrib attrib; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
#define  _AES_ 131 
 int /*<<< orphan*/  _SUCCESS ; 
#define  _TKIP_ 130 
#define  _WEP104_ 129 
#define  _WEP40_ 128 
 int /*<<< orphan*/  _drv_alert_ ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_rtl871x_xmit_c_ ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32 FUNC4(struct adapter *padapter, struct xmit_frame *pxmitframe)
{

	struct	pkt_attrib	 *pattrib = &pxmitframe->attrib;
	/* struct	security_priv *psecuritypriv =&padapter->securitypriv; */

	/* if ((psecuritypriv->sw_encrypt)||(pattrib->bswenc)) */
	if (pattrib->bswenc) {
		/* DBG_871X("start xmitframe_swencrypt\n"); */
		FUNC0(_module_rtl871x_xmit_c_, _drv_alert_, ("### xmitframe_swencrypt\n"));
		switch (pattrib->encrypt) {
		case _WEP40_:
		case _WEP104_:
			FUNC3(padapter, (u8 *)pxmitframe);
			break;
		case _TKIP_:
			FUNC2(padapter, (u8 *)pxmitframe);
			break;
		case _AES_:
			FUNC1(padapter, (u8 *)pxmitframe);
			break;
		default:
				break;
		}

	} else
		FUNC0(_module_rtl871x_xmit_c_, _drv_notice_, ("### xmitframe_hwencrypt\n"));

	return _SUCCESS;
}