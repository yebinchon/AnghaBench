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
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct ht_priv {scalar_t__ bss_coexist; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EID_EXTCapability ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 

void FUNC2(struct adapter *padapter, u8 *out_ie, uint *pout_len)
{
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct ht_priv 	*phtpriv = &pmlmepriv->htpriv;
	u8 cap_content[8] = {0};
	u8 *pframe;


	if (phtpriv->bss_coexist) {
		FUNC0(cap_content, 1);
	}

	pframe = FUNC1(out_ie + *pout_len, EID_EXTCapability, 8, cap_content, pout_len);
}