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
struct imx21 {struct etd_priv* etd; } ;
struct etd_priv {int alloc; } ;

/* Variables and functions */
 int USB_NUM_ETD ; 
 int /*<<< orphan*/  FUNC0 (struct imx21*) ; 
 int /*<<< orphan*/  FUNC1 (struct etd_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct imx21 *imx21)
{
	int i;
	struct etd_priv *etd = imx21->etd;

	for (i = 0; i < USB_NUM_ETD; i++, etd++) {
		if (etd->alloc == 0) {
			FUNC1(etd, 0, sizeof(imx21->etd[0]));
			etd->alloc = 1;
			FUNC0(imx21);
			return i;
		}
	}
	return -1;
}