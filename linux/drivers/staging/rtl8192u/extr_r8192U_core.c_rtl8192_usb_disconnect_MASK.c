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
struct usb_interface {int dummy; } ;
struct r8192_priv {int /*<<< orphan*/ * pFirmware; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct net_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *intf)
{
	struct net_device *dev = FUNC8(intf);
	struct r8192_priv *priv = FUNC2(dev);

	FUNC7(dev);

	FUNC0(COMP_DOWN, "=============>wlan driver to be removed\n");
	FUNC5(dev);

	FUNC4(dev);
	FUNC3(priv->pFirmware);
	priv->pFirmware = NULL;
	FUNC6(dev);
	FUNC9(10000, 11000);
	FUNC1(dev);

	FUNC0(COMP_DOWN, "wlan driver removed\n");
}