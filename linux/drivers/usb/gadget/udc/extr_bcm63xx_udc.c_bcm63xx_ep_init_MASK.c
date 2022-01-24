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
typedef  size_t u32 ;
struct iudma_ch_cfg {scalar_t__ ep_num; size_t ep_type; } ;
struct bcm63xx_udc {int dummy; } ;

/* Variables and functions */
 size_t BCM63XX_NUM_IUDMA ; 
 size_t USBD_EPNUM_TYPEMAP_DMA_CH_SHIFT ; 
 int /*<<< orphan*/  USBD_EPNUM_TYPEMAP_REG ; 
 size_t USBD_EPNUM_TYPEMAP_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*,scalar_t__) ; 
 struct iudma_ch_cfg* iudma_defaults ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bcm63xx_udc *udc)
{
	u32 i, val;

	for (i = 0; i < BCM63XX_NUM_IUDMA; i++) {
		const struct iudma_ch_cfg *cfg = &iudma_defaults[i];

		if (cfg->ep_num < 0)
			continue;

		FUNC0(udc, cfg->ep_num);
		val = (cfg->ep_type << USBD_EPNUM_TYPEMAP_TYPE_SHIFT) |
			((i >> 1) << USBD_EPNUM_TYPEMAP_DMA_CH_SHIFT);
		FUNC1(udc, val, USBD_EPNUM_TYPEMAP_REG);
	}
}