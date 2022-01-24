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
struct trf7970a {int is_initiator; scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NFC_DIGITAL_CONFIG_FRAMING 129 
#define  NFC_DIGITAL_CONFIG_RF_TECH 128 
 scalar_t__ TRF7970A_ST_PWR_OFF ; 
 scalar_t__ TRF7970A_ST_RF_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct trf7970a* FUNC3 (struct nfc_digital_dev*) ; 
 int FUNC4 (struct trf7970a*) ; 
 int FUNC5 (struct trf7970a*,int) ; 
 int FUNC6 (struct trf7970a*,int) ; 

__attribute__((used)) static int FUNC7(struct nfc_digital_dev *ddev, int type,
				    int param)
{
	struct trf7970a *trf = FUNC3(ddev);
	int ret;

	FUNC0(trf->dev, "Configure hw - type: %d, param: %d\n", type, param);

	FUNC1(&trf->lock);

	trf->is_initiator = false;

	if ((trf->state == TRF7970A_ST_PWR_OFF) ||
	    (trf->state == TRF7970A_ST_RF_OFF)) {
		ret = FUNC4(trf);
		if (ret)
			goto err_unlock;
	}

	switch (type) {
	case NFC_DIGITAL_CONFIG_RF_TECH:
		ret = FUNC6(trf, param);
		break;
	case NFC_DIGITAL_CONFIG_FRAMING:
		ret = FUNC5(trf, param);
		break;
	default:
		FUNC0(trf->dev, "Unknown type: %d\n", type);
		ret = -EINVAL;
	}

err_unlock:
	FUNC2(&trf->lock);
	return ret;
}