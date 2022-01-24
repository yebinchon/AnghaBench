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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct typec_altmode {int /*<<< orphan*/  mode; int /*<<< orphan*/  svid; } ;
struct pd_mode_data {size_t nsvids; size_t svid_index; int /*<<< orphan*/ * svids; } ;
struct tcpm_port {int nr_snk_vdo; int* snk_vdo; int /*<<< orphan*/  partner; int /*<<< orphan*/  data_role; int /*<<< orphan*/  partner_altmode; int /*<<< orphan*/  port_altmode; struct pd_mode_data mode_data; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  ALTMODE_DISCOVERY_MAX ; 
#define  CMDT_INIT 136 
#define  CMDT_RSP_ACK 135 
 int CMDT_RSP_BUSY ; 
#define  CMDT_RSP_NAK 134 
#define  CMD_ATTENTION 133 
#define  CMD_DISCOVER_IDENT 132 
#define  CMD_DISCOVER_MODES 131 
#define  CMD_DISCOVER_SVID 130 
#define  CMD_ENTER_MODE 129 
#define  CMD_EXIT_MODE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PD_MAX_PAYLOAD ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TYPEC_DEVICE ; 
 int /*<<< orphan*/  TYPEC_STATE_USB ; 
 int /*<<< orphan*/  USB_SID_PD ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int const) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcpm_port*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct tcpm_port*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tcpm_port*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tcpm_port*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC16 (struct typec_altmode*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct typec_altmode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct typec_altmode*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct typec_altmode*,int,int*,int) ; 
 struct typec_altmode* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct tcpm_port *port, const __le32 *payload, int cnt,
			u32 *response)
{
	struct typec_altmode *adev;
	struct typec_altmode *pdev;
	struct pd_mode_data *modep;
	u32 p[PD_MAX_PAYLOAD];
	int rlen = 0;
	int cmd_type;
	int cmd;
	int i;

	for (i = 0; i < cnt; i++)
		p[i] = FUNC9(payload[i]);

	cmd_type = FUNC2(p[0]);
	cmd = FUNC1(p[0]);

	FUNC14(port, "Rx VDM cmd 0x%x type %d cmd %d len %d",
		 p[0], cmd_type, cmd, cnt);

	modep = &port->mode_data;

	adev = FUNC20(port->port_altmode, ALTMODE_DISCOVERY_MAX,
				   FUNC4(p[0]), FUNC3(p[0]));

	pdev = FUNC20(port->partner_altmode, ALTMODE_DISCOVERY_MAX,
				   FUNC4(p[0]), FUNC3(p[0]));

	switch (cmd_type) {
	case CMDT_INIT:
		switch (cmd) {
		case CMD_DISCOVER_IDENT:
			/* 6.4.4.3.1: Only respond as UFP (device) */
			if (port->data_role == TYPEC_DEVICE &&
			    port->nr_snk_vdo) {
				for (i = 0; i <  port->nr_snk_vdo; i++)
					response[i + 1] = port->snk_vdo[i];
				rlen = port->nr_snk_vdo + 1;
			}
			break;
		case CMD_DISCOVER_SVID:
			break;
		case CMD_DISCOVER_MODES:
			break;
		case CMD_ENTER_MODE:
			break;
		case CMD_EXIT_MODE:
			break;
		case CMD_ATTENTION:
			/* Attention command does not have response */
			if (adev)
				FUNC16(adev, p[1]);
			return 0;
		default:
			break;
		}
		if (rlen >= 1) {
			response[0] = p[0] | FUNC6(CMDT_RSP_ACK);
		} else if (rlen == 0) {
			response[0] = p[0] | FUNC6(CMDT_RSP_NAK);
			rlen = 1;
		} else {
			response[0] = p[0] | FUNC6(CMDT_RSP_BUSY);
			rlen = 1;
		}
		break;
	case CMDT_RSP_ACK:
		/* silently drop message if we are not connected */
		if (FUNC0(port->partner))
			break;

		switch (cmd) {
		case CMD_DISCOVER_IDENT:
			/* 6.4.4.3.1 */
			FUNC11(port, payload, cnt);
			response[0] = FUNC5(USB_SID_PD, 1, CMD_DISCOVER_SVID);
			rlen = 1;
			break;
		case CMD_DISCOVER_SVID:
			/* 6.4.4.3.2 */
			if (FUNC13(port, payload, cnt)) {
				response[0] = FUNC5(USB_SID_PD, 1,
						  CMD_DISCOVER_SVID);
				rlen = 1;
			} else if (modep->nsvids && FUNC10(port)) {
				response[0] = FUNC5(modep->svids[0], 1,
						  CMD_DISCOVER_MODES);
				rlen = 1;
			}
			break;
		case CMD_DISCOVER_MODES:
			/* 6.4.4.3.3 */
			FUNC12(port, payload, cnt);
			modep->svid_index++;
			if (modep->svid_index < modep->nsvids) {
				u16 svid = modep->svids[modep->svid_index];
				response[0] = FUNC5(svid, 1, CMD_DISCOVER_MODES);
				rlen = 1;
			} else {
				FUNC15(port);
			}
			break;
		case CMD_ENTER_MODE:
			if (adev && pdev) {
				FUNC18(pdev, true);

				if (FUNC19(adev, p[0], &p[1], cnt)) {
					response[0] = FUNC5(adev->svid, 1,
							  CMD_EXIT_MODE);
					response[0] |= FUNC7(adev->mode);
					return 1;
				}
			}
			return 0;
		case CMD_EXIT_MODE:
			if (adev && pdev) {
				FUNC18(pdev, false);

				/* Back to USB Operation */
				FUNC8(FUNC17(adev,
							     TYPEC_STATE_USB,
							     NULL));
			}
			break;
		default:
			break;
		}
		break;
	case CMDT_RSP_NAK:
		switch (cmd) {
		case CMD_ENTER_MODE:
			/* Back to USB Operation */
			if (adev)
				FUNC8(FUNC17(adev,
							     TYPEC_STATE_USB,
							     NULL));
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}

	/* Informing the alternate mode drivers about everything */
	if (adev)
		FUNC19(adev, p[0], &p[1], cnt);

	return rlen;
}