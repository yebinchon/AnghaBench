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
typedef  int /*<<< orphan*/  u32 ;
struct tcpm_port {unsigned int operating_snk_mw; scalar_t__ vconn_role; unsigned int current_limit; unsigned int supply_voltage; int /*<<< orphan*/  polarity; int /*<<< orphan*/  vbus_source; int /*<<< orphan*/  cc2; int /*<<< orphan*/  cc1; int /*<<< orphan*/  cc_req; int /*<<< orphan*/ * snk_pdo; int /*<<< orphan*/ * source_caps; } ;
typedef  enum pd_pdo_type { ____Placeholder_pd_pdo_type } pd_pdo_type ;

/* Variables and functions */
 int EINVAL ; 
#define  PDO_TYPE_BATT 130 
#define  PDO_TYPE_FIXED 129 
#define  PDO_TYPE_VAR 128 
 int /*<<< orphan*/  FUNC0 (int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int RDO_CAP_MISMATCH ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int RDO_NO_SUSPEND ; 
 unsigned int RDO_USB_COMM ; 
 scalar_t__ TYPEC_SOURCE ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tcpm_port*,char*,...) ; 
 int FUNC10 (struct tcpm_port*,int*,int*) ; 

__attribute__((used)) static int FUNC11(struct tcpm_port *port, u32 *rdo)
{
	unsigned int mv, ma, mw, flags;
	unsigned int max_ma, max_mw;
	enum pd_pdo_type type;
	u32 pdo, matching_snk_pdo;
	int src_pdo_index = 0;
	int snk_pdo_index = 0;
	int ret;

	ret = FUNC10(port, &snk_pdo_index, &src_pdo_index);
	if (ret < 0)
		return ret;

	pdo = port->source_caps[src_pdo_index];
	matching_snk_pdo = port->snk_pdo[snk_pdo_index];
	type = FUNC8(pdo);

	switch (type) {
	case PDO_TYPE_FIXED:
		mv = FUNC4(pdo);
		break;
	case PDO_TYPE_BATT:
	case PDO_TYPE_VAR:
		mv = FUNC7(pdo);
		break;
	default:
		FUNC9(port, "Invalid PDO selected!");
		return -EINVAL;
	}

	/* Select maximum available current within the sink pdo's limit */
	if (type == PDO_TYPE_BATT) {
		mw = FUNC3(pdo, matching_snk_pdo);
		ma = 1000 * mw / mv;
	} else {
		ma = FUNC2(pdo, matching_snk_pdo);
		mw = ma * mv / 1000;
	}

	flags = RDO_USB_COMM | RDO_NO_SUSPEND;

	/* Set mismatch bit if offered power is less than operating power */
	max_ma = ma;
	max_mw = mw;
	if (mw < port->operating_snk_mw) {
		flags |= RDO_CAP_MISMATCH;
		if (type == PDO_TYPE_BATT &&
		    (FUNC6(matching_snk_pdo) > FUNC6(pdo)))
			max_mw = FUNC6(matching_snk_pdo);
		else if (FUNC5(matching_snk_pdo) >
			 FUNC5(pdo))
			max_ma = FUNC5(matching_snk_pdo);
	}

	FUNC9(port, "cc=%d cc1=%d cc2=%d vbus=%d vconn=%s polarity=%d",
		 port->cc_req, port->cc1, port->cc2, port->vbus_source,
		 port->vconn_role == TYPEC_SOURCE ? "source" : "sink",
		 port->polarity);

	if (type == PDO_TYPE_BATT) {
		*rdo = FUNC0(src_pdo_index + 1, mw, max_mw, flags);

		FUNC9(port, "Requesting PDO %d: %u mV, %u mW%s",
			 src_pdo_index, mv, mw,
			 flags & RDO_CAP_MISMATCH ? " [mismatch]" : "");
	} else {
		*rdo = FUNC1(src_pdo_index + 1, ma, max_ma, flags);

		FUNC9(port, "Requesting PDO %d: %u mV, %u mA%s",
			 src_pdo_index, mv, ma,
			 flags & RDO_CAP_MISMATCH ? " [mismatch]" : "");
	}

	port->current_limit = ma;
	port->supply_voltage = mv;

	return 0;
}