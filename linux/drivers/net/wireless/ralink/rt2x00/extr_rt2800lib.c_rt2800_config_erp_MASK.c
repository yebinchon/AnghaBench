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
typedef  int u32 ;
struct rt2x00lib_erp {int basic_rates; int slot_time; int eifs; int beacon_int; scalar_t__ cts_protection; int /*<<< orphan*/  short_preamble; } ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_RSP_CFG ; 
 int /*<<< orphan*/  AUTO_RSP_CFG_AR_PREAMBLE ; 
 int /*<<< orphan*/  BCN_TIME_CFG ; 
 int /*<<< orphan*/  BCN_TIME_CFG_BEACON_INTERVAL ; 
 int /*<<< orphan*/  BKOFF_SLOT_CFG ; 
 int /*<<< orphan*/  BKOFF_SLOT_CFG_SLOT_TIME ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_ERP_CTS_PROT ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int BSS_CHANGED_HT ; 
 int /*<<< orphan*/  HT_BASIC_RATE ; 
 int /*<<< orphan*/  LEGACY_BASIC_RATE ; 
 int /*<<< orphan*/  OFDM_PROT_CFG ; 
 int /*<<< orphan*/  OFDM_PROT_CFG_PROTECT_CTRL ; 
 int /*<<< orphan*/  XIFS_TIME_CFG ; 
 int /*<<< orphan*/  XIFS_TIME_CFG_EIFS ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,struct rt2x00lib_erp*) ; 
 int FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct rt2x00_dev *rt2x00dev, struct rt2x00lib_erp *erp,
		       u32 changed)
{
	u32 reg;

	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
		reg = FUNC1(rt2x00dev, AUTO_RSP_CFG);
		FUNC3(&reg, AUTO_RSP_CFG_AR_PREAMBLE,
				   !!erp->short_preamble);
		FUNC2(rt2x00dev, AUTO_RSP_CFG, reg);
	}

	if (changed & BSS_CHANGED_ERP_CTS_PROT) {
		reg = FUNC1(rt2x00dev, OFDM_PROT_CFG);
		FUNC3(&reg, OFDM_PROT_CFG_PROTECT_CTRL,
				   erp->cts_protection ? 2 : 0);
		FUNC2(rt2x00dev, OFDM_PROT_CFG, reg);
	}

	if (changed & BSS_CHANGED_BASIC_RATES) {
		FUNC2(rt2x00dev, LEGACY_BASIC_RATE,
				      0xff0 | erp->basic_rates);
		FUNC2(rt2x00dev, HT_BASIC_RATE, 0x00008003);
	}

	if (changed & BSS_CHANGED_ERP_SLOT) {
		reg = FUNC1(rt2x00dev, BKOFF_SLOT_CFG);
		FUNC3(&reg, BKOFF_SLOT_CFG_SLOT_TIME,
				   erp->slot_time);
		FUNC2(rt2x00dev, BKOFF_SLOT_CFG, reg);

		reg = FUNC1(rt2x00dev, XIFS_TIME_CFG);
		FUNC3(&reg, XIFS_TIME_CFG_EIFS, erp->eifs);
		FUNC2(rt2x00dev, XIFS_TIME_CFG, reg);
	}

	if (changed & BSS_CHANGED_BEACON_INT) {
		reg = FUNC1(rt2x00dev, BCN_TIME_CFG);
		FUNC3(&reg, BCN_TIME_CFG_BEACON_INTERVAL,
				   erp->beacon_int * 16);
		FUNC2(rt2x00dev, BCN_TIME_CFG, reg);
	}

	if (changed & BSS_CHANGED_HT)
		FUNC0(rt2x00dev, erp);
}