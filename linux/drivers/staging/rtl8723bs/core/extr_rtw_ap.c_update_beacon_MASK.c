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
struct mlme_priv {int update_bcn; int /*<<< orphan*/  bcn_update_lock; } ;
struct mlme_ext_priv {int /*<<< orphan*/  bstart_bss; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
#define  _ERPINFO_IE_ 133 
#define  _HT_ADD_INFO_IE_ 132 
#define  _HT_CAPABILITY_IE_ 131 
#define  _RSN_IE_2_ 130 
#define  _TIM_IE_ 129 
#define  _VENDOR_SPECIFIC_IE_ 128 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int*) ; 

void FUNC10(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
{
	struct mlme_priv *pmlmepriv;
	struct mlme_ext_priv *pmlmeext;
	/* struct mlme_ext_info *pmlmeinfo; */

	/* DBG_871X("%s\n", __func__); */

	if (!padapter)
		return;

	pmlmepriv = &(padapter->mlmepriv);
	pmlmeext = &(padapter->mlmeextpriv);
	/* pmlmeinfo = &(pmlmeext->mlmext_info); */

	if (!pmlmeext->bstart_bss)
		return;

	FUNC1(&pmlmepriv->bcn_update_lock);

	switch (ie_id) {
	case 0xFF:

		FUNC5(padapter);/* 8: TimeStamp, 2: Beacon Interval 2:Capability */

		break;

	case _TIM_IE_:

		FUNC3(padapter);

		break;

	case _ERPINFO_IE_:

		FUNC4(padapter);

		break;

	case _HT_CAPABILITY_IE_:

		FUNC6(padapter);

		break;

	case _RSN_IE_2_:

		FUNC8(padapter);

		break;

	case _HT_ADD_INFO_IE_:

		FUNC7(padapter);

		break;

	case _VENDOR_SPECIFIC_IE_:

		FUNC9(padapter, oui);

		break;

	default:
		break;
	}

	pmlmepriv->update_bcn = true;

	FUNC2(&pmlmepriv->bcn_update_lock);

#ifndef CONFIG_INTERRUPT_BASED_TXBCN
	if (tx) {
		/* send_beacon(padapter);//send_beacon must execute on TSR level */
		FUNC0(padapter);
	}
#endif /* CONFIG_INTERRUPT_BASED_TXBCN */
}