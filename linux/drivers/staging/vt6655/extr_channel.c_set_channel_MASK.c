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
struct vnt_private {scalar_t__ byBBVGACurrent; scalar_t__* abyBBVGA; scalar_t__ byRFType; scalar_t__ byLocalID; scalar_t__ byBBType; int /*<<< orphan*/  byCurrentCh; int /*<<< orphan*/  lock; scalar_t__ PortOffset; int /*<<< orphan*/  byCurPwr; scalar_t__ bEnablePSMode; scalar_t__ bUpdateBBVGA; } ;
struct ieee80211_channel {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 scalar_t__ BB_TYPE_11B ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*) ; 
 int /*<<< orphan*/  MACCR_CLRNAV ; 
 int /*<<< orphan*/  MAC_REG_MACCR ; 
 scalar_t__ MAC_REG_PWRCCK ; 
 scalar_t__ MAC_REG_PWROFDM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  RATE_1M ; 
 int /*<<< orphan*/  RATE_6M ; 
 scalar_t__ REV_ID_VT3253_B1 ; 
 scalar_t__ RF_AIROHA7230 ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnt_private*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vnt_private*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC12(struct vnt_private *priv, struct ieee80211_channel *ch)
{
	bool ret = true;

	if (priv->byCurrentCh == ch->hw_value)
		return ret;

	/* Set VGA to max sensitivity */
	if (priv->bUpdateBBVGA &&
	    priv->byBBVGACurrent != priv->abyBBVGA[0]) {
		priv->byBBVGACurrent = priv->abyBBVGA[0];

		FUNC0(priv, priv->byBBVGACurrent);
	}

	/* clear NAV */
	FUNC2(priv->PortOffset, MAC_REG_MACCR, MACCR_CLRNAV);

	/* TX_PE will reserve 3 us for MAX2829 A mode only,
	 * it is for better TX throughput
	 */

	if (priv->byRFType == RF_AIROHA7230)
		FUNC5(priv, priv->byCurrentCh,
						  ch->hw_value);

	priv->byCurrentCh = ch->hw_value;
	ret &= FUNC6(priv, priv->byRFType,
				ch->hw_value);

	/* Init Synthesizer Table */
	if (priv->bEnablePSMode)
		FUNC8(priv, priv->byRFType, ch->hw_value);

	FUNC1(priv);

	if (priv->byLocalID > REV_ID_VT3253_B1) {
		unsigned long flags;

		FUNC10(&priv->lock, flags);

		/* set HW default power register */
		FUNC4(priv->PortOffset);
		FUNC7(priv, RATE_1M, priv->byCurrentCh);
		FUNC9(priv->PortOffset + MAC_REG_PWRCCK,
			     priv->byCurPwr);
		FUNC7(priv, RATE_6M, priv->byCurrentCh);
		FUNC9(priv->PortOffset + MAC_REG_PWROFDM,
			     priv->byCurPwr);
		FUNC3(priv->PortOffset);

		FUNC11(&priv->lock, flags);
	}

	if (priv->byBBType == BB_TYPE_11B)
		FUNC7(priv, RATE_1M, priv->byCurrentCh);
	else
		FUNC7(priv, RATE_6M, priv->byCurrentCh);

	return ret;
}