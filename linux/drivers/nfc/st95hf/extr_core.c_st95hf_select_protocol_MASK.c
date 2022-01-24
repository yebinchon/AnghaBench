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
struct st95hf_context {int current_rf_tech; TYPE_1__* nfcdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ISO14443A_PROTOCOL_SELECT ; 
 int /*<<< orphan*/  CMD_ISO14443B_PROTOCOL_SELECT ; 
 int /*<<< orphan*/  CMD_ISO15693_PROTOCOL_SELECT ; 
 int EINVAL ; 
#define  NFC_DIGITAL_RF_TECH_106A 130 
#define  NFC_DIGITAL_RF_TECH_106B 129 
#define  NFC_DIGITAL_RF_TECH_ISO15693 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct st95hf_context*) ; 
 int FUNC2 (struct st95hf_context*) ; 
 int FUNC3 (struct st95hf_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct st95hf_context *stcontext, int type)
{
	int result = 0;
	struct device *dev;

	dev = &stcontext->nfcdev->dev;

	switch (type) {
	case NFC_DIGITAL_RF_TECH_106A:
		stcontext->current_rf_tech = NFC_DIGITAL_RF_TECH_106A;
		result = FUNC3(stcontext,
					      CMD_ISO14443A_PROTOCOL_SELECT,
					      0,
					      NULL,
					      true);
		if (result) {
			FUNC0(dev, "protocol sel, err = 0x%x\n",
				result);
			return result;
		}

		/* secondary config. for 14443Type 4A after protocol select */
		result = FUNC1(stcontext);
		if (result) {
			FUNC0(dev, "type a secondary config, err = 0x%x\n",
				result);
			return result;
		}
		break;
	case NFC_DIGITAL_RF_TECH_106B:
		stcontext->current_rf_tech = NFC_DIGITAL_RF_TECH_106B;
		result = FUNC3(stcontext,
					      CMD_ISO14443B_PROTOCOL_SELECT,
					      0,
					      NULL,
					      true);
		if (result) {
			FUNC0(dev, "protocol sel send, err = 0x%x\n",
				result);
			return result;
		}

		/*
		 * delay of 5-6 ms is required after select protocol
		 * command in case of ISO14443 Type B
		 */
		FUNC4(50000, 60000);

		/* secondary config. for 14443Type 4B after protocol select */
		result = FUNC2(stcontext);
		if (result) {
			FUNC0(dev, "type b secondary config, err = 0x%x\n",
				result);
			return result;
		}
		break;
	case NFC_DIGITAL_RF_TECH_ISO15693:
		stcontext->current_rf_tech = NFC_DIGITAL_RF_TECH_ISO15693;
		result = FUNC3(stcontext,
					      CMD_ISO15693_PROTOCOL_SELECT,
					      0,
					      NULL,
					      true);
		if (result) {
			FUNC0(dev, "protocol sel send, err = 0x%x\n",
				result);
			return result;
		}
		break;
	default:
		return -EINVAL;
	}

	return 0;
}