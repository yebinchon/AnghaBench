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
struct tcpm_port {int nr_src_pdo; int /*<<< orphan*/ * src_pdo; } ;
typedef  enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;

/* Variables and functions */
 scalar_t__ PDO_TYPE_FIXED ; 
 int TYPEC_CC_RP_1_5 ; 
 int TYPEC_CC_RP_3_0 ; 
 int TYPEC_CC_RP_DEF ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 unsigned int FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static enum typec_cc_status FUNC3(struct tcpm_port *port)
{
	const u32 *src_pdo = port->src_pdo;
	int nr_pdo = port->nr_src_pdo;
	int i;

	/*
	 * Search for first entry with matching voltage.
	 * It should report the maximum supported current.
	 */
	for (i = 0; i < nr_pdo; i++) {
		const u32 pdo = src_pdo[i];

		if (FUNC2(pdo) == PDO_TYPE_FIXED &&
		    FUNC0(pdo) == 5000) {
			unsigned int curr = FUNC1(pdo);

			if (curr >= 3000)
				return TYPEC_CC_RP_3_0;
			else if (curr >= 1500)
				return TYPEC_CC_RP_1_5;
			return TYPEC_CC_RP_DEF;
		}
	}

	return TYPEC_CC_RP_DEF;
}