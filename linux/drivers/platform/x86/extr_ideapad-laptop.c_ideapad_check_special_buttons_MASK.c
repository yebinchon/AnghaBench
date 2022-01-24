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
struct ideapad_private {TYPE_1__* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPCCMD_R_SPECIAL_BUTTONS ; 
 int /*<<< orphan*/  FUNC0 (struct ideapad_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long*) ; 

__attribute__((used)) static void FUNC4(struct ideapad_private *priv)
{
	unsigned long bit, value;

	FUNC2(priv->adev->handle, VPCCMD_R_SPECIAL_BUTTONS, &value);

	for (bit = 0; bit < 16; bit++) {
		if (FUNC3(bit, &value)) {
			switch (bit) {
			case 0:	/* Z580 */
			case 6:	/* Z570 */
				/* Thermal Management button */
				FUNC0(priv, 65);
				break;
			case 1:
				/* OneKey Theater button */
				FUNC0(priv, 64);
				break;
			default:
				FUNC1("Unknown special button: %lu\n", bit);
				break;
			}
		}
	}
}