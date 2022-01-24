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
typedef  int /*<<< orphan*/  u32 ;
struct urb {int dummy; } ;
struct rtl8xxxu_priv {int /*<<< orphan*/  int_anchor; int /*<<< orphan*/  int_buf; int /*<<< orphan*/  pipe_interrupt; int /*<<< orphan*/  udev; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REG_USB_HIMR ; 
 int /*<<< orphan*/  USB_HIMR_CPWM ; 
 int /*<<< orphan*/  USB_INTR_CONTENT_LENGTH ; 
 int /*<<< orphan*/  rtl8xxxu_int_complete ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtl8xxxu_priv*,int) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw)
{
	struct rtl8xxxu_priv *priv = hw->priv;
	struct urb *urb;
	u32 val32;
	int ret;

	urb = FUNC2(0, GFP_KERNEL);
	if (!urb)
		return -ENOMEM;

	FUNC4(urb, priv->udev, priv->pipe_interrupt,
			 priv->int_buf, USB_INTR_CONTENT_LENGTH,
			 rtl8xxxu_int_complete, priv, 1);
	FUNC3(urb, &priv->int_anchor);
	ret = FUNC5(urb, GFP_KERNEL);
	if (ret) {
		FUNC6(urb);
		goto error;
	}

	val32 = FUNC0(priv, REG_USB_HIMR);
	val32 |= USB_HIMR_CPWM;
	FUNC1(priv, REG_USB_HIMR, val32);

error:
	return ret;
}