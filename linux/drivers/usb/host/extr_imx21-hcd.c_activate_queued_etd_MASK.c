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
typedef  int u8 ;
typedef  int u32 ;
struct urb_priv {int active; } ;
struct imx21 {int /*<<< orphan*/  dev; struct etd_priv* etd; } ;
struct etd_priv {int dmem_offset; TYPE_1__* urb; } ;
struct TYPE_2__ {struct urb_priv* hcpriv; } ;

/* Variables and functions */
 int DW1_YBUFSRTAD ; 
 int DW2_DIRPID ; 
 int /*<<< orphan*/  FUNC0 (struct imx21*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct imx21*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct imx21*,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct imx21 *imx21,
	struct etd_priv *etd, u32 dmem_offset)
{
	struct urb_priv *urb_priv = etd->urb->hcpriv;
	int etd_num = etd - &imx21->etd[0];
	u32 maxpacket = FUNC2(imx21, etd_num, 1) >> DW1_YBUFSRTAD;
	u8 dir = (FUNC2(imx21, etd_num, 2) >> DW2_DIRPID) & 0x03;

	FUNC1(imx21->dev, "activating queued ETD %d now DMEM available\n",
		etd_num);
	FUNC3(imx21, etd_num, 1,
	    ((dmem_offset + maxpacket) << DW1_YBUFSRTAD) | dmem_offset);

	etd->dmem_offset = dmem_offset;
	urb_priv->active = 1;
	FUNC0(imx21, etd_num, dir);
}