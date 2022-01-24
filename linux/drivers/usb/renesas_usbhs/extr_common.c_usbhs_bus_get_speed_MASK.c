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

/* Variables and functions */
 int /*<<< orphan*/  DVSTCTR ; 
 int RHST ; 
#define  RHST_FULL_SPEED 130 
#define  RHST_HIGH_SPEED 129 
#define  RHST_LOW_SPEED 128 
 int USB_SPEED_FULL ; 
 int USB_SPEED_HIGH ; 
 int USB_SPEED_LOW ; 
 int USB_SPEED_UNKNOWN ; 
 int FUNC0 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 

int FUNC1(struct usbhs_priv *priv)
{
	u16 dvstctr = FUNC0(priv, DVSTCTR);

	switch (RHST & dvstctr) {
	case RHST_LOW_SPEED:
		return USB_SPEED_LOW;
	case RHST_FULL_SPEED:
		return USB_SPEED_FULL;
	case RHST_HIGH_SPEED:
		return USB_SPEED_HIGH;
	}

	return USB_SPEED_UNKNOWN;
}