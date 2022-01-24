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
struct tb_regs_hop {scalar_t__ egress_shared_buffer; scalar_t__ ingress_shared_buffer; scalar_t__ egress_fc; scalar_t__ ingress_fc; int /*<<< orphan*/  pending; scalar_t__ enable; } ;
struct tb_port {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  TB_CFG_HOPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct tb_port*,struct tb_regs_hop*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct tb_port*,struct tb_regs_hop*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct tb_port *port, int hop_index,
				    bool clear_fc)
{
	struct tb_regs_hop hop;
	ktime_t timeout;
	int ret;

	/* Disable the path */
	ret = FUNC3(port, &hop, TB_CFG_HOPS, 2 * hop_index, 2);
	if (ret)
		return ret;

	/* Already disabled */
	if (!hop.enable)
		return 0;

	hop.enable = 0;

	ret = FUNC4(port, &hop, TB_CFG_HOPS, 2 * hop_index, 2);
	if (ret)
		return ret;

	/* Wait until it is drained */
	timeout = FUNC0(FUNC2(), 500);
	do {
		ret = FUNC3(port, &hop, TB_CFG_HOPS, 2 * hop_index, 2);
		if (ret)
			return ret;

		if (!hop.pending) {
			if (clear_fc) {
				/* Clear flow control */
				hop.ingress_fc = 0;
				hop.egress_fc = 0;
				hop.ingress_shared_buffer = 0;
				hop.egress_shared_buffer = 0;

				return FUNC4(port, &hop, TB_CFG_HOPS,
						     2 * hop_index, 2);
			}

			return 0;
		}

		FUNC5(10, 20);
	} while (FUNC1(FUNC2(), timeout));

	return -ETIMEDOUT;
}