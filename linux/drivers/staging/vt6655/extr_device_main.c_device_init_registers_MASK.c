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
struct vnt_private {int bAES; int bProtectMode; int bNonERPPresent; int bBarkerPreambleMd; scalar_t__ byLocalID; int byMinChannel; int bTxRxAntInv; int byAntennaCount; int dwTxAntennaSel; int dwRxAntennaSel; int byCurPwr; unsigned char* abyCCKDefaultPwr; unsigned char* abyOFDMDefaultPwr; int bRadioOff; int byRadioCtl; int bHWRadioOff; int byGPIO; scalar_t__ PortOffset; int /*<<< orphan*/  abyCurrentNetAddr; scalar_t__ bRadioControlOff; void* wCurrentRate; void* byTxAntennaMode; void* byRxAntennaMode; int /*<<< orphan*/ * abyBBVGA; int /*<<< orphan*/  byBBVGACurrent; int /*<<< orphan*/  byBBVGANew; scalar_t__ bUpdateBBVGA; int /*<<< orphan*/  byLongRetryLimit; int /*<<< orphan*/  byShortRetryLimit; void** abyOFDMPwrTbl; void** abyCCKPwrTbl; void* byOFDMPwrG; void* byCCKPwr; int /*<<< orphan*/  byZoneType; int /*<<< orphan*/ * abyEEPROM; int /*<<< orphan*/  bZoneRegExist; int /*<<< orphan*/  byOriginalZonetype; int /*<<< orphan*/  byMaxChannel; int /*<<< orphan*/  lock; void* byTopCCKBasicRate; int /*<<< orphan*/  byTopOFDMBasicRate; } ;

/* Variables and functions */
 void* ANT_A ; 
 void* ANT_B ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnt_private*) ; 
 int /*<<< orphan*/  CB_MAX_CHANNEL ; 
 unsigned int CB_MAX_CHANNEL_24G ; 
 unsigned int CB_MAX_CHANNEL_5G ; 
 int CFG_NOTXTIMEOUT ; 
 int CFG_TKIPOPT ; 
 unsigned char EEP_ANTENNA_AUX ; 
 unsigned char EEP_ANTENNA_MAIN ; 
 unsigned char EEP_ANTINV ; 
 unsigned char EEP_OFS_ANTENNA ; 
 scalar_t__ EEP_OFS_CCK_PWR_TBL ; 
 scalar_t__ EEP_OFS_OFDMA_PWR_TBL ; 
 scalar_t__ EEP_OFS_OFDMA_PWR_dBm ; 
 scalar_t__ EEP_OFS_OFDM_PWR_TBL ; 
 unsigned char EEP_OFS_PWR_CCK ; 
 unsigned char EEP_OFS_PWR_OFDMG ; 
 unsigned char EEP_OFS_RADIOCTL ; 
 size_t EEP_OFS_ZONETYPE ; 
 int EEP_RADIOCTL_ENABLE ; 
 int EEP_RADIOCTL_INV ; 
 int GPIO0_DATA ; 
 int /*<<< orphan*/  MAC_REG_CFG ; 
 scalar_t__ MAC_REG_LOCALID ; 
 scalar_t__ MAC_REG_MSRCTL ; 
 int /*<<< orphan*/  MAC_REG_RCR ; 
 scalar_t__ MAC_REG_TFTCTL ; 
 int /*<<< orphan*/  FUNC8 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int MSRCTL1_CSAPAREN ; 
 int MSRCTL1_TXPWR ; 
 void* RATE_1M ; 
 int /*<<< orphan*/  RATE_24M ; 
 void* RATE_54M ; 
 int /*<<< orphan*/  RCR_WPAERR ; 
 scalar_t__ REV_ID_VT3253_A1 ; 
 scalar_t__ REV_ID_VT3253_B1 ; 
 int /*<<< orphan*/  FUNC21 (struct vnt_private*) ; 
 void* FUNC22 (scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 
 int TFTCTL_TSFCNTREN ; 
 int TFTCTL_TSFCNTRST ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC30(struct vnt_private *priv)
{
	unsigned long flags;
	unsigned int ii;
	unsigned char byValue;
	unsigned char byCCKPwrdBm = 0;
	unsigned char byOFDMPwrdBm = 0;

	FUNC8(priv);
	FUNC4(priv);

	/* Do MACbSoftwareReset in MACvInitialize */
	FUNC9(priv);

	priv->bAES = false;

	/* Only used in 11g type, sync with ERP IE */
	priv->bProtectMode = false;

	priv->bNonERPPresent = false;
	priv->bBarkerPreambleMd = false;
	priv->wCurrentRate = RATE_1M;
	priv->byTopOFDMBasicRate = RATE_24M;
	priv->byTopCCKBasicRate = RATE_1M;

	/* init MAC */
	FUNC11(priv);

	/* Get Local ID */
	FUNC25(priv->PortOffset + MAC_REG_LOCALID, &priv->byLocalID);

	FUNC28(&priv->lock, flags);

	FUNC23(priv->PortOffset, priv->abyEEPROM);

	FUNC29(&priv->lock, flags);

	/* Get Channel range */
	priv->byMinChannel = 1;
	priv->byMaxChannel = CB_MAX_CHANNEL;

	/* Get Antena */
	byValue = FUNC22(priv->PortOffset, EEP_OFS_ANTENNA);
	if (byValue & EEP_ANTINV)
		priv->bTxRxAntInv = true;
	else
		priv->bTxRxAntInv = false;

	byValue &= (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN);
	/* if not set default is All */
	if (byValue == 0)
		byValue = (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN);

	if (byValue == (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN)) {
		priv->byAntennaCount = 2;
		priv->byTxAntennaMode = ANT_B;
		priv->dwTxAntennaSel = 1;
		priv->dwRxAntennaSel = 1;

		if (priv->bTxRxAntInv)
			priv->byRxAntennaMode = ANT_A;
		else
			priv->byRxAntennaMode = ANT_B;
	} else  {
		priv->byAntennaCount = 1;
		priv->dwTxAntennaSel = 0;
		priv->dwRxAntennaSel = 0;

		if (byValue & EEP_ANTENNA_AUX) {
			priv->byTxAntennaMode = ANT_A;

			if (priv->bTxRxAntInv)
				priv->byRxAntennaMode = ANT_B;
			else
				priv->byRxAntennaMode = ANT_A;
		} else {
			priv->byTxAntennaMode = ANT_B;

			if (priv->bTxRxAntInv)
				priv->byRxAntennaMode = ANT_A;
			else
				priv->byRxAntennaMode = ANT_B;
		}
	}

	/* Set initial antenna mode */
	FUNC2(priv, priv->byTxAntennaMode);
	FUNC1(priv, priv->byRxAntennaMode);

	/* zonetype initial */
	priv->byOriginalZonetype = priv->abyEEPROM[EEP_OFS_ZONETYPE];

	if (!priv->bZoneRegExist)
		priv->byZoneType = priv->abyEEPROM[EEP_OFS_ZONETYPE];

	FUNC27("priv->byZoneType = %x\n", priv->byZoneType);

	/* Init RF module */
	FUNC21(priv);

	/* Get Desire Power Value */
	priv->byCurPwr = 0xFF;
	priv->byCCKPwr = FUNC22(priv->PortOffset, EEP_OFS_PWR_CCK);
	priv->byOFDMPwrG = FUNC22(priv->PortOffset, EEP_OFS_PWR_OFDMG);

	/* Load power Table */
	for (ii = 0; ii < CB_MAX_CHANNEL_24G; ii++) {
		priv->abyCCKPwrTbl[ii + 1] =
			FUNC22(priv->PortOffset,
					   (unsigned char)(ii + EEP_OFS_CCK_PWR_TBL));
		if (priv->abyCCKPwrTbl[ii + 1] == 0)
			priv->abyCCKPwrTbl[ii + 1] = priv->byCCKPwr;

		priv->abyOFDMPwrTbl[ii + 1] =
			FUNC22(priv->PortOffset,
					   (unsigned char)(ii + EEP_OFS_OFDM_PWR_TBL));
		if (priv->abyOFDMPwrTbl[ii + 1] == 0)
			priv->abyOFDMPwrTbl[ii + 1] = priv->byOFDMPwrG;

		priv->abyCCKDefaultPwr[ii + 1] = byCCKPwrdBm;
		priv->abyOFDMDefaultPwr[ii + 1] = byOFDMPwrdBm;
	}

	/* recover 12,13 ,14channel for EUROPE by 11 channel */
	for (ii = 11; ii < 14; ii++) {
		priv->abyCCKPwrTbl[ii] = priv->abyCCKPwrTbl[10];
		priv->abyOFDMPwrTbl[ii] = priv->abyOFDMPwrTbl[10];
	}

	/* Load OFDM A Power Table */
	for (ii = 0; ii < CB_MAX_CHANNEL_5G; ii++) {
		priv->abyOFDMPwrTbl[ii + CB_MAX_CHANNEL_24G + 1] =
			FUNC22(priv->PortOffset,
					   (unsigned char)(ii + EEP_OFS_OFDMA_PWR_TBL));

		priv->abyOFDMDefaultPwr[ii + CB_MAX_CHANNEL_24G + 1] =
			FUNC22(priv->PortOffset,
					   (unsigned char)(ii + EEP_OFS_OFDMA_PWR_dBm));
	}

	if (priv->byLocalID > REV_ID_VT3253_B1) {
		FUNC16(priv->PortOffset);

		FUNC26(priv->PortOffset + MAC_REG_MSRCTL + 1,
			     (MSRCTL1_TXPWR | MSRCTL1_CSAPAREN));

		FUNC15(priv->PortOffset);
	}

	/* use relative tx timeout and 802.11i D4 */
	FUNC20(priv->PortOffset,
			  MAC_REG_CFG, (CFG_TKIPOPT | CFG_NOTXTIMEOUT));

	/* set performance parameter by registry */
	FUNC18(priv, priv->byShortRetryLimit);
	FUNC17(priv, priv->byLongRetryLimit);

	/* reset TSF counter */
	FUNC26(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);
	/* enable TSF counter */
	FUNC26(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);

	/* initialize BBP registers */
	FUNC0(priv);

	if (priv->bUpdateBBVGA) {
		priv->byBBVGACurrent = priv->abyBBVGA[0];
		priv->byBBVGANew = priv->byBBVGACurrent;
		FUNC3(priv, priv->abyBBVGA[0]);
	}

	FUNC1(priv, priv->byRxAntennaMode);
	FUNC2(priv, priv->byTxAntennaMode);

	/* Set BB and packet type at the same time. */
	/* Set Short Slot Time, xIFS, and RSPINF. */
	priv->wCurrentRate = RATE_54M;

	priv->bRadioOff = false;

	priv->byRadioCtl = FUNC22(priv->PortOffset,
						 EEP_OFS_RADIOCTL);
	priv->bHWRadioOff = false;

	if (priv->byRadioCtl & EEP_RADIOCTL_ENABLE) {
		/* Get GPIO */
		FUNC10(priv->PortOffset, &priv->byGPIO);

		if (((priv->byGPIO & GPIO0_DATA) &&
		     !(priv->byRadioCtl & EEP_RADIOCTL_INV)) ||
		     (!(priv->byGPIO & GPIO0_DATA) &&
		     (priv->byRadioCtl & EEP_RADIOCTL_INV)))
			priv->bHWRadioOff = true;
	}

	if (priv->bHWRadioOff || priv->bRadioControlOff)
		FUNC5(priv);

	/* get Permanent network address */
	FUNC24(priv->PortOffset, priv->abyCurrentNetAddr);
	FUNC27("Network address = %pM\n", priv->abyCurrentNetAddr);

	/* reset Tx pointer */
	FUNC6(priv);
	/* reset Rx pointer */
	FUNC7(priv);

	if (priv->byLocalID <= REV_ID_VT3253_A1)
		FUNC14(priv->PortOffset, MAC_REG_RCR, RCR_WPAERR);

	/* Turn On Rx DMA */
	FUNC12(priv->PortOffset);
	FUNC13(priv->PortOffset);

	/* start the adapter */
	FUNC19(priv->PortOffset);
}