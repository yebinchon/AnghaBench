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
typedef  int u16 ;
struct usbhs_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVSTCTR ; 
 int UACT ; 
 int USBRST ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,int /*<<< orphan*/ ,int,int) ; 
 struct device* FUNC2 (struct usbhs_priv*) ; 
 int FUNC3 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 

void FUNC4(struct usbhs_priv *priv)
{
	u16 status = FUNC3(priv, DVSTCTR) & (USBRST | UACT);

	if (status != USBRST) {
		struct device *dev = FUNC2(priv);
		FUNC0(dev, "usbhs should be reset\n");
	}

	FUNC1(priv, DVSTCTR, (USBRST | UACT), UACT);
}