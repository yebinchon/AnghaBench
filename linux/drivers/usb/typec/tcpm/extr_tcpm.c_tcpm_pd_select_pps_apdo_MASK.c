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
struct TYPE_2__ {unsigned int min_volt; unsigned int max_volt; unsigned int max_curr; unsigned int out_volt; unsigned int op_curr; } ;
struct tcpm_port {unsigned int nr_source_caps; unsigned int nr_snk_pdo; TYPE_1__ pps_data; int /*<<< orphan*/ * snk_pdo; int /*<<< orphan*/ * source_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDO_TYPE_PPS ; 
#define  PDO_TYPE_APDO 128 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 void* FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tcpm_port*,char*) ; 

__attribute__((used)) static unsigned int FUNC9(struct tcpm_port *port)
{
	unsigned int i, j, max_mw = 0, max_mv = 0;
	unsigned int min_src_mv, max_src_mv, src_ma, src_mw;
	unsigned int min_snk_mv, max_snk_mv;
	unsigned int max_op_mv;
	u32 pdo, src, snk;
	unsigned int src_pdo = 0, snk_pdo = 0;

	/*
	 * Select the source PPS APDO providing the most power while staying
	 * within the board's limits. We skip the first PDO as this is always
	 * 5V 3A.
	 */
	for (i = 1; i < port->nr_source_caps; ++i) {
		pdo = port->source_caps[i];

		switch (FUNC7(pdo)) {
		case PDO_TYPE_APDO:
			if (FUNC3(pdo) != APDO_TYPE_PPS) {
				FUNC8(port, "Not PPS APDO (source), ignoring");
				continue;
			}

			min_src_mv = FUNC6(pdo);
			max_src_mv = FUNC5(pdo);
			src_ma = FUNC4(pdo);
			src_mw = (src_ma * max_src_mv) / 1000;

			/*
			 * Now search through the sink PDOs to find a matching
			 * PPS APDO. Again skip the first sink PDO as this will
			 * always be 5V 3A.
			 */
			for (j = 1; j < port->nr_snk_pdo; j++) {
				pdo = port->snk_pdo[j];

				switch (FUNC7(pdo)) {
				case PDO_TYPE_APDO:
					if (FUNC3(pdo) != APDO_TYPE_PPS) {
						FUNC8(port,
							 "Not PPS APDO (sink), ignoring");
						continue;
					}

					min_snk_mv =
						FUNC6(pdo);
					max_snk_mv =
						FUNC5(pdo);
					break;
				default:
					FUNC8(port,
						 "Not APDO type (sink), ignoring");
					continue;
				}

				if (min_src_mv <= max_snk_mv &&
				    max_src_mv >= min_snk_mv) {
					max_op_mv = FUNC1(max_src_mv, max_snk_mv);
					src_mw = (max_op_mv * src_ma) / 1000;
					/* Prefer higher voltages if available */
					if ((src_mw == max_mw &&
					     max_op_mv > max_mv) ||
					    src_mw > max_mw) {
						src_pdo = i;
						snk_pdo = j;
						max_mw = src_mw;
						max_mv = max_op_mv;
					}
				}
			}

			break;
		default:
			FUNC8(port, "Not APDO type (source), ignoring");
			continue;
		}
	}

	if (src_pdo) {
		src = port->source_caps[src_pdo];
		snk = port->snk_pdo[snk_pdo];

		port->pps_data.min_volt = FUNC0(FUNC6(src),
					      FUNC6(snk));
		port->pps_data.max_volt = FUNC1(FUNC5(src),
					      FUNC5(snk));
		port->pps_data.max_curr = FUNC2(src, snk);
		port->pps_data.out_volt = FUNC1(port->pps_data.max_volt,
					      FUNC0(port->pps_data.min_volt,
						  port->pps_data.out_volt));
		port->pps_data.op_curr = FUNC1(port->pps_data.max_curr,
					     port->pps_data.op_curr);
	}

	return src_pdo;
}