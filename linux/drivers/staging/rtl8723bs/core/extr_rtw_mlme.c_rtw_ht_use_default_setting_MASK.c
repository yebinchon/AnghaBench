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
struct registry_priv {int /*<<< orphan*/  beamform_cap; int /*<<< orphan*/  stbc_cap; int /*<<< orphan*/  ldpc_cap; int /*<<< orphan*/  short_gi; scalar_t__ wifi_spec; } ;
struct ht_priv {int bss_coexist; int sgi_40m; int sgi_20m; scalar_t__ beamform_cap; scalar_t__ stbc_cap; scalar_t__ ldpc_cap; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct adapter {struct registry_priv registrypriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEAMFORMING_HT_BEAMFORMEE_ENABLE ; 
 int /*<<< orphan*/  BEAMFORMING_HT_BEAMFORMER_ENABLE ; 
 int /*<<< orphan*/  BIT0 ; 
 int /*<<< orphan*/  BIT1 ; 
 int /*<<< orphan*/  BIT4 ; 
 int /*<<< orphan*/  BIT5 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  HAL_DEF_EXPLICIT_BEAMFORMEE ; 
 int /*<<< orphan*/  HAL_DEF_EXPLICIT_BEAMFORMER ; 
 int /*<<< orphan*/  HAL_DEF_RX_LDPC ; 
 int /*<<< orphan*/  HAL_DEF_RX_STBC ; 
 int /*<<< orphan*/  HAL_DEF_TX_LDPC ; 
 int /*<<< orphan*/  HAL_DEF_TX_STBC ; 
 int /*<<< orphan*/  LDPC_HT_ENABLE_RX ; 
 int /*<<< orphan*/  LDPC_HT_ENABLE_TX ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STBC_HT_ENABLE_RX ; 
 int /*<<< orphan*/  STBC_HT_ENABLE_TX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct adapter *padapter)
{
	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
	struct ht_priv 	*phtpriv = &pmlmepriv->htpriv;
	struct registry_priv *pregistrypriv = &padapter->registrypriv;
	bool		bHwLDPCSupport = false, bHwSTBCSupport = false;
	bool		bHwSupportBeamformer = false, bHwSupportBeamformee = false;

	if (pregistrypriv->wifi_spec)
		phtpriv->bss_coexist = 1;
	else
		phtpriv->bss_coexist = 0;

	phtpriv->sgi_40m = FUNC3(pregistrypriv->short_gi, BIT1) ? true : false;
	phtpriv->sgi_20m = FUNC3(pregistrypriv->short_gi, BIT0) ? true : false;

	/*  LDPC support */
	FUNC4(padapter, HAL_DEF_RX_LDPC, (u8 *)&bHwLDPCSupport);
	FUNC0(phtpriv->ldpc_cap);
	if (bHwLDPCSupport) {
		if (FUNC3(pregistrypriv->ldpc_cap, BIT4))
			FUNC2(phtpriv->ldpc_cap, LDPC_HT_ENABLE_RX);
	}
	FUNC4(padapter, HAL_DEF_TX_LDPC, (u8 *)&bHwLDPCSupport);
	if (bHwLDPCSupport) {
		if (FUNC3(pregistrypriv->ldpc_cap, BIT5))
			FUNC2(phtpriv->ldpc_cap, LDPC_HT_ENABLE_TX);
	}
	if (phtpriv->ldpc_cap)
		FUNC1("[HT] Support LDPC = 0x%02X\n", phtpriv->ldpc_cap);

	/*  STBC */
	FUNC4(padapter, HAL_DEF_TX_STBC, (u8 *)&bHwSTBCSupport);
	FUNC0(phtpriv->stbc_cap);
	if (bHwSTBCSupport) {
		if (FUNC3(pregistrypriv->stbc_cap, BIT5))
			FUNC2(phtpriv->stbc_cap, STBC_HT_ENABLE_TX);
	}
	FUNC4(padapter, HAL_DEF_RX_STBC, (u8 *)&bHwSTBCSupport);
	if (bHwSTBCSupport) {
		if (FUNC3(pregistrypriv->stbc_cap, BIT4))
			FUNC2(phtpriv->stbc_cap, STBC_HT_ENABLE_RX);
	}
	if (phtpriv->stbc_cap)
		FUNC1("[HT] Support STBC = 0x%02X\n", phtpriv->stbc_cap);

	/*  Beamforming setting */
	FUNC4(padapter, HAL_DEF_EXPLICIT_BEAMFORMER, (u8 *)&bHwSupportBeamformer);
	FUNC4(padapter, HAL_DEF_EXPLICIT_BEAMFORMEE, (u8 *)&bHwSupportBeamformee);
	FUNC0(phtpriv->beamform_cap);
	if (FUNC3(pregistrypriv->beamform_cap, BIT4) && bHwSupportBeamformer) {
		FUNC2(phtpriv->beamform_cap, BEAMFORMING_HT_BEAMFORMER_ENABLE);
		FUNC1("[HT] Support Beamformer\n");
	}
	if (FUNC3(pregistrypriv->beamform_cap, BIT5) && bHwSupportBeamformee) {
		FUNC2(phtpriv->beamform_cap, BEAMFORMING_HT_BEAMFORMEE_ENABLE);
		FUNC1("[HT] Support Beamformee\n");
	}
}