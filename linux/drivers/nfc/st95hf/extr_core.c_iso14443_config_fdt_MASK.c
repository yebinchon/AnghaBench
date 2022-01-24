#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* spidev; } ;
struct st95hf_context {int fwi; struct nfc_digital_dev* ddev; TYPE_2__ spicontext; } ;
struct param_list {int param_offset; int new_param_val; } ;
struct nfc_digital_dev {int curr_protocol; } ;
struct device {int dummy; } ;
struct TYPE_6__ {unsigned char* cmd_params; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 size_t CMD_ISO14443A_PROTOCOL_SELECT ; 
 size_t CMD_ISO14443B_PROTOCOL_SELECT ; 
 int EINVAL ; 
#define  NFC_PROTO_ISO14443 129 
#define  NFC_PROTO_ISO14443_B 128 
 TYPE_3__* cmd_array ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct st95hf_context*) ; 
 int FUNC2 (struct st95hf_context*) ; 
 int FUNC3 (struct st95hf_context*,size_t,int,struct param_list*,int) ; 

__attribute__((used)) static int FUNC4(struct st95hf_context *st95context, int wtxm)
{
	int result = 0;
	struct device *dev = &st95context->spicontext.spidev->dev;
	struct nfc_digital_dev *nfcddev = st95context->ddev;
	unsigned char pp_typeb;
	struct param_list new_params[2];

	pp_typeb = cmd_array[CMD_ISO14443B_PROTOCOL_SELECT].cmd_params[2];

	if (nfcddev->curr_protocol == NFC_PROTO_ISO14443 &&
	    st95context->fwi < 4)
		st95context->fwi = 4;

	new_params[0].param_offset = 2;
	if (nfcddev->curr_protocol == NFC_PROTO_ISO14443)
		new_params[0].new_param_val = st95context->fwi;
	else if (nfcddev->curr_protocol == NFC_PROTO_ISO14443_B)
		new_params[0].new_param_val = pp_typeb;

	new_params[1].param_offset = 3;
	new_params[1].new_param_val = wtxm;

	switch (nfcddev->curr_protocol) {
	case NFC_PROTO_ISO14443:
		result = FUNC3(st95context,
					      CMD_ISO14443A_PROTOCOL_SELECT,
					      2,
					      new_params,
					      true);
		if (result) {
			FUNC0(dev, "WTX type a sel proto, err = 0x%x\n",
				result);
			return result;
		}

		/* secondary config. for 14443Type 4A after protocol select */
		result = FUNC1(st95context);
		if (result) {
			FUNC0(dev, "WTX type a second. config, err = 0x%x\n",
				result);
			return result;
		}
		break;
	case NFC_PROTO_ISO14443_B:
		result = FUNC3(st95context,
					      CMD_ISO14443B_PROTOCOL_SELECT,
					      2,
					      new_params,
					      true);
		if (result) {
			FUNC0(dev, "WTX type b sel proto, err = 0x%x\n",
				result);
			return result;
		}

		/* secondary config. for 14443Type 4B after protocol select */
		result = FUNC2(st95context);
		if (result) {
			FUNC0(dev, "WTX type b second. config, err = 0x%x\n",
				result);
			return result;
		}
		break;
	default:
		return -EINVAL;
	}

	return 0;
}