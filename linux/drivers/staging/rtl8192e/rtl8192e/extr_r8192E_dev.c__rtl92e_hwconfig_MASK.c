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
typedef  int u8 ;
typedef  int u32 ;
struct r8192_priv {scalar_t__ rf_type; int ShortRetryLimit; int LongRetryLimit; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BW_OPMODE ; 
 int BW_OPMODE_20MHZ ; 
 int BW_OPMODE_5G ; 
 int RATE_ALL_CCK ; 
 int RATE_ALL_OFDM_1SS ; 
 int RATE_ALL_OFDM_2SS ; 
 int RATE_ALL_OFDM_AG ; 
 int /*<<< orphan*/  RATR0 ; 
 int /*<<< orphan*/  RETRY_LIMIT ; 
 int RETRY_LIMIT_LONG_SHIFT ; 
 int RETRY_LIMIT_SHORT_SHIFT ; 
 scalar_t__ RF_1T2R ; 
 int /*<<< orphan*/  RRSR ; 
 int /*<<< orphan*/  UFWP ; 
#define  WIRELESS_MODE_A 133 
#define  WIRELESS_MODE_AUTO 132 
#define  WIRELESS_MODE_B 131 
#define  WIRELESS_MODE_G 130 
#define  WIRELESS_MODE_N_24G 129 
#define  WIRELESS_MODE_N_5G 128 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct r8192_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	u32 regRATR = 0, regRRSR = 0;
	u8 regBwOpMode = 0, regTmp = 0;
	struct r8192_priv *priv = FUNC4(dev);

	switch (priv->rtllib->mode) {
	case WIRELESS_MODE_B:
		regBwOpMode = BW_OPMODE_20MHZ;
		regRATR = RATE_ALL_CCK;
		regRRSR = RATE_ALL_CCK;
		break;
	case WIRELESS_MODE_A:
		regBwOpMode = BW_OPMODE_5G | BW_OPMODE_20MHZ;
		regRATR = RATE_ALL_OFDM_AG;
		regRRSR = RATE_ALL_OFDM_AG;
		break;
	case WIRELESS_MODE_G:
		regBwOpMode = BW_OPMODE_20MHZ;
		regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
		regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
		break;
	case WIRELESS_MODE_AUTO:
	case WIRELESS_MODE_N_24G:
		regBwOpMode = BW_OPMODE_20MHZ;
		regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG |
			  RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
		regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
		break;
	case WIRELESS_MODE_N_5G:
		regBwOpMode = BW_OPMODE_5G;
		regRATR = RATE_ALL_OFDM_AG | RATE_ALL_OFDM_1SS |
			  RATE_ALL_OFDM_2SS;
		regRRSR = RATE_ALL_OFDM_AG;
		break;
	default:
		regBwOpMode = BW_OPMODE_20MHZ;
		regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
		regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
		break;
	}

	FUNC1(dev, BW_OPMODE, regBwOpMode);
	{
		u32 ratr_value;

		ratr_value = regRATR;
		if (priv->rf_type == RF_1T2R)
			ratr_value &= ~(RATE_ALL_OFDM_2SS);
		FUNC2(dev, RATR0, ratr_value);
		FUNC1(dev, UFWP, 1);
	}
	regTmp = FUNC0(dev, 0x313);
	regRRSR = ((regTmp) << 24) | (regRRSR & 0x00ffffff);
	FUNC2(dev, RRSR, regRRSR);

	FUNC3(dev, RETRY_LIMIT,
		      priv->ShortRetryLimit << RETRY_LIMIT_SHORT_SHIFT |
		      priv->LongRetryLimit << RETRY_LIMIT_LONG_SHIFT);
}