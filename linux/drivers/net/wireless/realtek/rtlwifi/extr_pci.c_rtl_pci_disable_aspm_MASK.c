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
typedef  scalar_t__ u16 ;
struct rtl_ps_ctl {int reg_rfps_level; int /*<<< orphan*/  support_aspm; } ;
struct rtl_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ pcibridge_vendor; scalar_t__ num4bytes; scalar_t__ linkctrl_reg; scalar_t__ pcibridge_linkctrlreg; } ;
struct rtl_pci_priv {TYPE_1__ ndis_adapter; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ PCI_BRIDGE_VENDOR_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_ps_ctl*,int) ; 
 int RT_RF_OFF_LEVL_CLK_REQ ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct rtl_pci* FUNC7 (struct rtl_pci_priv*) ; 
 struct rtl_pci_priv* FUNC8 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC10 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct rtl_pci_priv *pcipriv = FUNC8(hw);
	struct rtl_ps_ctl *ppsc = FUNC10(FUNC9(hw));
	struct rtl_pci *rtlpci = FUNC7(FUNC8(hw));
	u8 pcibridge_vendor = pcipriv->ndis_adapter.pcibridge_vendor;
	u8 num4bytes = pcipriv->ndis_adapter.num4bytes;
	/*Retrieve original configuration settings. */
	u8 linkctrl_reg = pcipriv->ndis_adapter.linkctrl_reg;
	u16 pcibridge_linkctrlreg = pcipriv->ndis_adapter.
				pcibridge_linkctrlreg;
	u16 aspmlevel = 0;
	u8 tmp_u1b = 0;

	if (!ppsc->support_aspm)
		return;

	if (pcibridge_vendor == PCI_BRIDGE_VENDOR_UNKNOWN) {
		FUNC2(rtlpriv, COMP_POWER, DBG_TRACE,
			 "PCI(Bridge) UNKNOWN\n");

		return;
	}

	if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_CLK_REQ) {
		FUNC1(ppsc, RT_RF_OFF_LEVL_CLK_REQ);
		FUNC4(hw, 0x0);
	}

	/*for promising device will in L0 state after an I/O. */
	FUNC5(rtlpci->pdev, 0x80, &tmp_u1b);

	/*Set corresponding value. */
	aspmlevel |= FUNC0(0) | FUNC0(1);
	linkctrl_reg &= ~aspmlevel;
	pcibridge_linkctrlreg &= ~(FUNC0(0) | FUNC0(1));

	FUNC3(hw, linkctrl_reg);
	FUNC11(50);

	/*4 Disable Pci Bridge ASPM */
	FUNC6(rtlpci->pdev, (num4bytes << 2),
			      pcibridge_linkctrlreg);

	FUNC11(50);
}