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
struct lpuart_port {int /*<<< orphan*/  ipg_clk; int /*<<< orphan*/  baud_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct lpuart_port *sport, bool is_en)
{
	int ret = 0;

	if (is_en) {
		ret = FUNC1(sport->ipg_clk);
		if (ret)
			return ret;

		ret = FUNC1(sport->baud_clk);
		if (ret) {
			FUNC0(sport->ipg_clk);
			return ret;
		}
	} else {
		FUNC0(sport->baud_clk);
		FUNC0(sport->ipg_clk);
	}

	return 0;
}