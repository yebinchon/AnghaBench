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
typedef  int uint32_t ;
struct mx3fb_data {int /*<<< orphan*/  lock; } ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;

/* Variables and functions */
 int IDMAC_SDC_0 ; 
 int /*<<< orphan*/  SDC_COM_CONF ; 
 int SDC_COM_GWSEL ; 
 int SDC_COM_KEY_COLOR_G ; 
 int /*<<< orphan*/  SDC_GW_CTRL ; 
 int FUNC0 (struct mx3fb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mx3fb_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mx3fb_data *mx3fb, enum ipu_channel channel,
			     bool enable, uint32_t color_key)
{
	uint32_t reg, sdc_conf;
	unsigned long lock_flags;

	FUNC2(&mx3fb->lock, lock_flags);

	sdc_conf = FUNC0(mx3fb, SDC_COM_CONF);
	if (channel == IDMAC_SDC_0)
		sdc_conf &= ~SDC_COM_GWSEL;
	else
		sdc_conf |= SDC_COM_GWSEL;

	if (enable) {
		reg = FUNC0(mx3fb, SDC_GW_CTRL) & 0xFF000000L;
		FUNC1(mx3fb, reg | (color_key & 0x00FFFFFFL),
			     SDC_GW_CTRL);

		sdc_conf |= SDC_COM_KEY_COLOR_G;
	} else {
		sdc_conf &= ~SDC_COM_KEY_COLOR_G;
	}
	FUNC1(mx3fb, sdc_conf, SDC_COM_CONF);

	FUNC3(&mx3fb->lock, lock_flags);

	return 0;
}