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
struct etd_priv {int /*<<< orphan*/ * bounce_buffer; int /*<<< orphan*/ * td; int /*<<< orphan*/ * ep; int /*<<< orphan*/ * urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx21*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct imx21*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct imx21 *imx21, int num)
{
	struct etd_priv *etd = imx21->etd + num;
	int i;

	FUNC0(imx21, num);

	for (i = 0; i < 4; i++)
		FUNC1(imx21, num, i, 0);
	etd->urb = NULL;
	etd->ep = NULL;
	etd->td = NULL;
	etd->bounce_buffer = NULL;
}