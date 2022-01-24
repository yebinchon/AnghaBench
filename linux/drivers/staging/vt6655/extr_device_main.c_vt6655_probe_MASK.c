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
struct wiphy {int interface_modes; int /*<<< orphan*/  rts_threshold; int /*<<< orphan*/  frag_threshold; } ;
struct vnt_private {int memaddr; int byRFType; struct ieee80211_hw* hw; int /*<<< orphan*/  PortOffset; int /*<<< orphan*/  abyCurrentNetAddr; int /*<<< orphan*/  interrupt_work; void* ioaddr; int /*<<< orphan*/  lock; struct pci_dev* pcid; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ieee80211_hw {int max_signal; struct wiphy* wiphy; struct vnt_private* priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEVICE_FULL_DRV_NAM ; 
 int /*<<< orphan*/  DEVICE_NAME ; 
 int /*<<< orphan*/  DEVICE_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EEP_OFS_RFTYPE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FRAG_THRESH_DEF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int RF_MASK ; 
 int /*<<< orphan*/  RTS_THRESH_DEF ; 
 int /*<<< orphan*/  RX_INCLUDES_FCS ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUPPORTS_PS ; 
 int /*<<< orphan*/  TIMING_BEACON_ONLY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnt_private*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC16 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 scalar_t__ FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC21 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (struct vnt_private*) ; 
 int /*<<< orphan*/  vnt_interrupt_work ; 
 int /*<<< orphan*/  vnt_mac_ops ; 

__attribute__((used)) static int
FUNC26(struct pci_dev *pcid, const struct pci_device_id *ent)
{
	struct vnt_private *priv;
	struct ieee80211_hw *hw;
	struct wiphy *wiphy;
	int         rc;

	FUNC10(&pcid->dev,
		   "%s Ver. %s\n", DEVICE_FULL_DRV_NAM, DEVICE_VERSION);

	FUNC10(&pcid->dev,
		   "Copyright (c) 2003 VIA Networking Technologies, Inc.\n");

	hw = FUNC16(sizeof(*priv), &vnt_mac_ops);
	if (!hw) {
		FUNC9(&pcid->dev, "could not register ieee80211_hw\n");
		return -ENOMEM;
	}

	priv = hw->priv;
	priv->pcid = pcid;

	FUNC24(&priv->lock);

	priv->hw = hw;

	FUNC6(priv->hw, &pcid->dev);

	if (FUNC19(pcid)) {
		FUNC11(priv);
		return -ENODEV;
	}

	FUNC8(&pcid->dev,
		"Before get pci_info memaddr is %x\n", priv->memaddr);

	FUNC23(pcid);

	priv->memaddr = FUNC21(pcid, 0);
	priv->ioaddr = FUNC21(pcid, 1);
	priv->PortOffset = FUNC18(priv->memaddr & PCI_BASE_ADDRESS_MEM_MASK,
				   256);
	if (!priv->PortOffset) {
		FUNC9(&pcid->dev, ": Failed to IO remapping ..\n");
		FUNC11(priv);
		return -ENODEV;
	}

	rc = FUNC20(pcid, DEVICE_NAME);
	if (rc) {
		FUNC9(&pcid->dev, ": Failed to find PCI device\n");
		FUNC11(priv);
		return -ENODEV;
	}

	if (FUNC15(&pcid->dev, FUNC1(32))) {
		FUNC9(&pcid->dev, ": Failed to set dma 32 bit mask\n");
		FUNC11(priv);
		return -ENODEV;
	}

	FUNC2(&priv->interrupt_work, vnt_interrupt_work);

	/* do reset */
	if (!FUNC3(priv)) {
		FUNC9(&pcid->dev, ": Failed to access MAC hardware..\n");
		FUNC11(priv);
		return -ENODEV;
	}
	/* initial to reload eeprom */
	FUNC4(priv);
	FUNC5(priv->PortOffset, priv->abyCurrentNetAddr);

	/* Get RFType */
	priv->byRFType = FUNC7(priv->PortOffset, EEP_OFS_RFTYPE);
	priv->byRFType &= RF_MASK;

	FUNC8(&pcid->dev, "RF Type = %x\n", priv->byRFType);

	FUNC12(priv);
	FUNC14(priv);

	wiphy = priv->hw->wiphy;

	wiphy->frag_threshold = FRAG_THRESH_DEF;
	wiphy->rts_threshold = RTS_THRESH_DEF;
	wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION) |
		FUNC0(NL80211_IFTYPE_ADHOC) | FUNC0(NL80211_IFTYPE_AP);

	FUNC17(priv->hw, TIMING_BEACON_ONLY);
	FUNC17(priv->hw, SIGNAL_DBM);
	FUNC17(priv->hw, RX_INCLUDES_FCS);
	FUNC17(priv->hw, REPORTS_TX_ACK_STATUS);
	FUNC17(priv->hw, SUPPORTS_PS);

	priv->hw->max_signal = 100;

	if (FUNC25(priv)) {
		FUNC11(priv);
		return -ENODEV;
	}

	FUNC13(priv);
	FUNC22(pcid, priv);

	return 0;
}