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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_NEGATIVE_EDGE_STS ; 
 size_t OLPC_DCON_STAT0 ; 
 size_t OLPC_DCON_STAT1 ; 
 int /*<<< orphan*/  OLPC_GPIO_DCON_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * gpios ; 

__attribute__((used)) static int FUNC2(u8 *status)
{
	*status = FUNC1(gpios[OLPC_DCON_STAT0]);
	*status |= FUNC1(gpios[OLPC_DCON_STAT1]) << 1;

	/* Clear the negative edge status for GPIO7 */
	FUNC0(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_STS);

	return 0;
}