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
typedef  scalar_t__ u32 ;
struct regmap {int dummy; } ;
struct q6v5 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AXI_HALTACK_REG ; 
 scalar_t__ AXI_HALTREQ_REG ; 
 scalar_t__ AXI_IDLE_REG ; 
 int /*<<< orphan*/  HALT_ACK_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct regmap*,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct q6v5 *qproc,
				   struct regmap *halt_map,
				   u32 offset)
{
	unsigned long timeout;
	unsigned int val;
	int ret;

	/* Check if we're already idle */
	ret = FUNC3(halt_map, offset + AXI_IDLE_REG, &val);
	if (!ret && val)
		return;

	/* Assert halt request */
	FUNC4(halt_map, offset + AXI_HALTREQ_REG, 1);

	/* Wait for halt */
	timeout = jiffies + FUNC1(HALT_ACK_TIMEOUT_MS);
	for (;;) {
		ret = FUNC3(halt_map, offset + AXI_HALTACK_REG, &val);
		if (ret || val || FUNC5(jiffies, timeout))
			break;

		FUNC2(1);
	}

	ret = FUNC3(halt_map, offset + AXI_IDLE_REG, &val);
	if (ret || !val)
		FUNC0(qproc->dev, "port failed halt\n");

	/* Clear halt request (port will remain halted until reset) */
	FUNC4(halt_map, offset + AXI_HALTREQ_REG, 0);
}