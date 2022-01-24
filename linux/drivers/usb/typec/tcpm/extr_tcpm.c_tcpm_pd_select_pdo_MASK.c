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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int supported; } ;
struct tcpm_port {unsigned int nr_source_caps; unsigned int nr_snk_pdo; int /*<<< orphan*/ * snk_pdo; int /*<<< orphan*/  usb_type; TYPE_1__ pps_data; int /*<<< orphan*/ * source_caps; } ;
typedef  enum pd_pdo_type { ____Placeholder_pd_pdo_type } pd_pdo_type ;

/* Variables and functions */
 int /*<<< orphan*/  APDO_TYPE_PPS ; 
 int EINVAL ; 
#define  PDO_TYPE_APDO 131 
#define  PDO_TYPE_BATT 130 
#define  PDO_TYPE_FIXED 129 
#define  PDO_TYPE_VAR 128 
 int /*<<< orphan*/  POWER_SUPPLY_USB_TYPE_PD ; 
 int /*<<< orphan*/  POWER_SUPPLY_USB_TYPE_PD_PPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcpm_port*,char*) ; 

__attribute__((used)) static int FUNC8(struct tcpm_port *port, int *sink_pdo,
			      int *src_pdo)
{
	unsigned int i, j, max_src_mv = 0, min_src_mv = 0, max_mw = 0,
		     max_mv = 0, src_mw = 0, src_ma = 0, max_snk_mv = 0,
		     min_snk_mv = 0;
	int ret = -EINVAL;

	port->pps_data.supported = false;
	port->usb_type = POWER_SUPPLY_USB_TYPE_PD;

	/*
	 * Select the source PDO providing the most power which has a
	 * matchig sink cap.
	 */
	for (i = 0; i < port->nr_source_caps; i++) {
		u32 pdo = port->source_caps[i];
		enum pd_pdo_type type = FUNC6(pdo);

		switch (type) {
		case PDO_TYPE_FIXED:
			max_src_mv = FUNC1(pdo);
			min_src_mv = max_src_mv;
			break;
		case PDO_TYPE_BATT:
		case PDO_TYPE_VAR:
			max_src_mv = FUNC4(pdo);
			min_src_mv = FUNC5(pdo);
			break;
		case PDO_TYPE_APDO:
			if (FUNC0(pdo) == APDO_TYPE_PPS) {
				port->pps_data.supported = true;
				port->usb_type =
					POWER_SUPPLY_USB_TYPE_PD_PPS;
			}
			continue;
		default:
			FUNC7(port, "Invalid source PDO type, ignoring");
			continue;
		}

		switch (type) {
		case PDO_TYPE_FIXED:
		case PDO_TYPE_VAR:
			src_ma = FUNC2(pdo);
			src_mw = src_ma * min_src_mv / 1000;
			break;
		case PDO_TYPE_BATT:
			src_mw = FUNC3(pdo);
			break;
		case PDO_TYPE_APDO:
			continue;
		default:
			FUNC7(port, "Invalid source PDO type, ignoring");
			continue;
		}

		for (j = 0; j < port->nr_snk_pdo; j++) {
			pdo = port->snk_pdo[j];

			switch (FUNC6(pdo)) {
			case PDO_TYPE_FIXED:
				max_snk_mv = FUNC1(pdo);
				min_snk_mv = max_snk_mv;
				break;
			case PDO_TYPE_BATT:
			case PDO_TYPE_VAR:
				max_snk_mv = FUNC4(pdo);
				min_snk_mv = FUNC5(pdo);
				break;
			case PDO_TYPE_APDO:
				continue;
			default:
				FUNC7(port, "Invalid sink PDO type, ignoring");
				continue;
			}

			if (max_src_mv <= max_snk_mv &&
				min_src_mv >= min_snk_mv) {
				/* Prefer higher voltages if available */
				if ((src_mw == max_mw && min_src_mv > max_mv) ||
							src_mw > max_mw) {
					*src_pdo = i;
					*sink_pdo = j;
					max_mw = src_mw;
					max_mv = min_src_mv;
					ret = 0;
				}
			}
		}
	}

	return ret;
}