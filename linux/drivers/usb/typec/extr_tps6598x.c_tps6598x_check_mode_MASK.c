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
struct tps6598x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
#define  TPS_MODE_APP 131 
#define  TPS_MODE_BIST 130 
#define  TPS_MODE_BOOT 129 
#define  TPS_MODE_DISC 128 
 int /*<<< orphan*/  TPS_REG_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  modes ; 
 int FUNC4 (struct tps6598x*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC5(struct tps6598x *tps)
{
	char mode[5] = { };
	int ret;

	ret = FUNC4(tps, TPS_REG_MODE, (void *)mode);
	if (ret)
		return ret;

	switch (FUNC3(modes, FUNC0(modes), mode)) {
	case TPS_MODE_APP:
		return 0;
	case TPS_MODE_BOOT:
		FUNC2(tps->dev, "dead-battery condition\n");
		return 0;
	case TPS_MODE_BIST:
	case TPS_MODE_DISC:
	default:
		FUNC1(tps->dev, "controller in unsupported mode \"%s\"\n",
			mode);
		break;
	}

	return -ENODEV;
}