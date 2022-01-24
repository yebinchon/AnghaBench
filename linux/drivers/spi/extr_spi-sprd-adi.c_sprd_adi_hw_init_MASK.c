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
typedef  int u32 ;
struct sprd_adi {scalar_t__ base; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int ADI_HW_CHNS ; 
 int FUNC0 (int) ; 
 int BIT_CLK_ALL_ON ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ REG_ADI_CHN_EN ; 
 scalar_t__ REG_ADI_CHN_EN1 ; 
 scalar_t__ REG_ADI_CHN_PRIH ; 
 scalar_t__ REG_ADI_CHN_PRIL ; 
 scalar_t__ REG_ADI_GSSI_CFG0 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct sprd_adi *sadi)
{
	struct device_node *np = sadi->dev->of_node;
	int i, size, chn_cnt;
	const __be32 *list;
	u32 tmp;

	/* Set all channels as default priority */
	FUNC6(0, sadi->base + REG_ADI_CHN_PRIL);
	FUNC6(0, sadi->base + REG_ADI_CHN_PRIH);

	/* Set clock auto gate mode */
	tmp = FUNC5(sadi->base + REG_ADI_GSSI_CFG0);
	tmp &= ~BIT_CLK_ALL_ON;
	FUNC6(tmp, sadi->base + REG_ADI_GSSI_CFG0);

	/* Set hardware channels setting */
	list = FUNC4(np, "sprd,hw-channels", &size);
	if (!list || !size) {
		FUNC3(sadi->dev, "no hw channels setting in node\n");
		return;
	}

	chn_cnt = size / 8;
	for (i = 0; i < chn_cnt; i++) {
		u32 value;
		u32 chn_id = FUNC2(*list++);
		u32 chn_config = FUNC2(*list++);

		/* Channel 0 and 1 are software channels */
		if (chn_id < 2)
			continue;

		FUNC6(chn_config, sadi->base +
			       FUNC1(chn_id));

		if (chn_id < 32) {
			value = FUNC5(sadi->base + REG_ADI_CHN_EN);
			value |= FUNC0(chn_id);
			FUNC6(value, sadi->base + REG_ADI_CHN_EN);
		} else if (chn_id < ADI_HW_CHNS) {
			value = FUNC5(sadi->base + REG_ADI_CHN_EN1);
			value |= FUNC0(chn_id - 32);
			FUNC6(value, sadi->base + REG_ADI_CHN_EN1);
		}
	}
}