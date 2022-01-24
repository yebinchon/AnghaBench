#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ucsi_connector {TYPE_2__* ucsi; struct typec_altmode** partner_altmode; int /*<<< orphan*/  partner; struct typec_altmode** port_altmode; int /*<<< orphan*/  port; } ;
struct typec_altmode_desc {void* mode; int /*<<< orphan*/  svid; } ;
struct typec_altmode {int dummy; } ;
struct TYPE_3__ {int features; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__ cap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct typec_altmode*) ; 
 int FUNC1 (struct typec_altmode*) ; 
 int UCSI_CAP_ALT_MODE_OVERRIDE ; 
#define  UCSI_RECIPIENT_CON 131 
#define  UCSI_RECIPIENT_SOP 130 
#define  USB_TYPEC_DP_SID 129 
#define  USB_TYPEC_NVIDIA_VLINK_SID 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct typec_altmode*) ; 
 struct typec_altmode* FUNC4 (int /*<<< orphan*/ ,struct typec_altmode_desc*) ; 
 struct typec_altmode* FUNC5 (int /*<<< orphan*/ ,struct typec_altmode_desc*) ; 
 void* FUNC6 (struct typec_altmode**,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct typec_altmode**) ; 
 struct typec_altmode* FUNC8 (struct ucsi_connector*,int,int,struct typec_altmode_desc*) ; 

__attribute__((used)) static int FUNC9(struct ucsi_connector *con,
				 struct typec_altmode_desc *desc,
				 u8 recipient)
{
	struct typec_altmode *alt;
	bool override;
	int ret;
	int i;

	override = !!(con->ucsi->cap.features & UCSI_CAP_ALT_MODE_OVERRIDE);

	switch (recipient) {
	case UCSI_RECIPIENT_CON:
		i = FUNC7(con->port_altmode);
		if (i < 0) {
			ret = i;
			goto err;
		}

		desc->mode = FUNC6(con->port_altmode,
						    desc->svid);

		switch (desc->svid) {
		case USB_TYPEC_DP_SID:
		case USB_TYPEC_NVIDIA_VLINK_SID:
			alt = FUNC8(con, override, i, desc);
			break;
		default:
			alt = FUNC5(con->port, desc);
			break;
		}

		if (FUNC0(alt)) {
			ret = FUNC1(alt);
			goto err;
		}

		con->port_altmode[i] = alt;
		break;
	case UCSI_RECIPIENT_SOP:
		i = FUNC7(con->partner_altmode);
		if (i < 0) {
			ret = i;
			goto err;
		}

		desc->mode = FUNC6(con->partner_altmode,
						    desc->svid);

		alt = FUNC4(con->partner, desc);
		if (FUNC0(alt)) {
			ret = FUNC1(alt);
			goto err;
		}

		con->partner_altmode[i] = alt;
		break;
	default:
		return -EINVAL;
	}

	FUNC3(recipient, alt);

	return 0;

err:
	FUNC2(con->ucsi->dev, "failed to registers svid 0x%04x mode %d\n",
		desc->svid, desc->mode);

	return ret;
}