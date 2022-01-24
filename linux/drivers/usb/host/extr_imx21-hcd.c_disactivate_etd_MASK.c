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
struct imx21 {scalar_t__ regs; struct etd_priv* etd; } ;
struct etd_priv {scalar_t__ active_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx21*,struct etd_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBH_ETDDONEEN ; 
 int /*<<< orphan*/  USBH_ETDDONESTAT ; 
 scalar_t__ USBH_ETDENCLR ; 
 scalar_t__ USB_ETDDMACHANLCLR ; 
 int /*<<< orphan*/  FUNC1 (struct imx21*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct imx21*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  disactivated ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct imx21 *imx21, int num)
{
	int etd_mask = (1 << num);
	struct etd_priv *etd = &imx21->etd[num];

	FUNC3(etd_mask, imx21->regs + USBH_ETDENCLR);
	FUNC1(imx21, USBH_ETDDONEEN, etd_mask);
	FUNC3(etd_mask, imx21->regs + USB_ETDDMACHANLCLR);
	FUNC2(imx21, USBH_ETDDONESTAT, etd_mask);

	etd->active_count = 0;

	FUNC0(imx21, etd, disactivated);
}