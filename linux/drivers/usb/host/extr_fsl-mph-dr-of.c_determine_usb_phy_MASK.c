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
typedef  enum fsl_usb2_phy_modes { ____Placeholder_fsl_usb2_phy_modes } fsl_usb2_phy_modes ;

/* Variables and functions */
 int FSL_USB2_PHY_NONE ; 
 int FSL_USB2_PHY_SERIAL ; 
 int FSL_USB2_PHY_ULPI ; 
 int FSL_USB2_PHY_UTMI ; 
 int FSL_USB2_PHY_UTMI_DUAL ; 
 int FSL_USB2_PHY_UTMI_WIDE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static enum fsl_usb2_phy_modes FUNC1(const char *phy_type)
{
	if (!phy_type)
		return FSL_USB2_PHY_NONE;
	if (!FUNC0(phy_type, "ulpi"))
		return FSL_USB2_PHY_ULPI;
	if (!FUNC0(phy_type, "utmi"))
		return FSL_USB2_PHY_UTMI;
	if (!FUNC0(phy_type, "utmi_wide"))
		return FSL_USB2_PHY_UTMI_WIDE;
	if (!FUNC0(phy_type, "utmi_dual"))
		return FSL_USB2_PHY_UTMI_DUAL;
	if (!FUNC0(phy_type, "serial"))
		return FSL_USB2_PHY_SERIAL;

	return FSL_USB2_PHY_NONE;
}