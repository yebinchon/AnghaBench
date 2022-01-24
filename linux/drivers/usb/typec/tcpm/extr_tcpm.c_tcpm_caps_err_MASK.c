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
struct tcpm_port {int dummy; } ;
typedef  enum pdo_err { ____Placeholder_pdo_err } pdo_err ;
typedef  enum pd_pdo_type { ____Placeholder_pd_pdo_type } pd_pdo_type ;

/* Variables and functions */
 int /*<<< orphan*/  APDO_TYPE_PPS ; 
 int PDO_ERR_DUPE_PDO ; 
 int PDO_ERR_DUPE_PPS_APDO ; 
 int PDO_ERR_FIXED_NOT_SORTED ; 
 int PDO_ERR_NO_VSAFE5V ; 
 int PDO_ERR_PDO_TYPE_NOT_IN_ORDER ; 
 int PDO_ERR_PPS_APDO_NOT_SORTED ; 
 int PDO_ERR_VARIABLE_BATT_NOT_SORTED ; 
 int PDO_ERR_VSAFE5V_NOT_FIRST ; 
 int PDO_NO_ERR ; 
#define  PDO_TYPE_APDO 131 
#define  PDO_TYPE_BATT 130 
#define  PDO_TYPE_FIXED 129 
#define  PDO_TYPE_VAR 128 
 scalar_t__ VSAFE5V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (struct tcpm_port*,char*) ; 

__attribute__((used)) static enum pdo_err FUNC9(struct tcpm_port *port, const u32 *pdo,
				  unsigned int nr_pdo)
{
	unsigned int i;

	/* Should at least contain vSafe5v */
	if (nr_pdo < 1)
		return PDO_ERR_NO_VSAFE5V;

	/* The vSafe5V Fixed Supply Object Shall always be the first object */
	if (FUNC7(pdo[0]) != PDO_TYPE_FIXED ||
	    FUNC1(pdo[0]) != VSAFE5V)
		return PDO_ERR_VSAFE5V_NOT_FIRST;

	for (i = 1; i < nr_pdo; i++) {
		if (FUNC7(pdo[i]) < FUNC7(pdo[i - 1])) {
			return PDO_ERR_PDO_TYPE_NOT_IN_ORDER;
		} else if (FUNC7(pdo[i]) == FUNC7(pdo[i - 1])) {
			enum pd_pdo_type type = FUNC7(pdo[i]);

			switch (type) {
			/*
			 * The remaining Fixed Supply Objects, if
			 * present, shall be sent in voltage order;
			 * lowest to highest.
			 */
			case PDO_TYPE_FIXED:
				if (FUNC1(pdo[i]) <=
				    FUNC1(pdo[i - 1]))
					return PDO_ERR_FIXED_NOT_SORTED;
				break;
			/*
			 * The Battery Supply Objects and Variable
			 * supply, if present shall be sent in Minimum
			 * Voltage order; lowest to highest.
			 */
			case PDO_TYPE_VAR:
			case PDO_TYPE_BATT:
				if (FUNC3(pdo[i]) <
				    FUNC3(pdo[i - 1]))
					return PDO_ERR_VARIABLE_BATT_NOT_SORTED;
				else if ((FUNC3(pdo[i]) ==
					  FUNC3(pdo[i - 1])) &&
					 (FUNC2(pdo[i]) ==
					  FUNC2(pdo[i - 1])))
					return PDO_ERR_DUPE_PDO;
				break;
			/*
			 * The Programmable Power Supply APDOs, if present,
			 * shall be sent in Maximum Voltage order;
			 * lowest to highest.
			 */
			case PDO_TYPE_APDO:
				if (FUNC0(pdo[i]) != APDO_TYPE_PPS)
					break;

				if (FUNC5(pdo[i]) <
				    FUNC5(pdo[i - 1]))
					return PDO_ERR_PPS_APDO_NOT_SORTED;
				else if (FUNC6(pdo[i]) ==
					  FUNC6(pdo[i - 1]) &&
					 FUNC5(pdo[i]) ==
					  FUNC5(pdo[i - 1]) &&
					 FUNC4(pdo[i]) ==
					  FUNC4(pdo[i - 1]))
					return PDO_ERR_DUPE_PPS_APDO;
				break;
			default:
				FUNC8(port, " Unknown pdo type");
			}
		}
	}

	return PDO_NO_ERR;
}