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
struct ideapad_private {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  VPCCMD_R_VPC1 ; 
 int /*<<< orphan*/  VPCCMD_R_VPC2 ; 
 int /*<<< orphan*/  FUNC0 (struct ideapad_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct ideapad_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct ideapad_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct ideapad_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct ideapad_private*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ideapad_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct ideapad_private*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long*) ; 

__attribute__((used)) static void FUNC10(acpi_handle handle, u32 event, void *data)
{
	struct ideapad_private *priv = data;
	unsigned long vpc1, vpc2, vpc_bit;

	if (FUNC8(handle, VPCCMD_R_VPC1, &vpc1))
		return;
	if (FUNC8(handle, VPCCMD_R_VPC2, &vpc2))
		return;

	vpc1 = (vpc2 << 8) | vpc1;
	for (vpc_bit = 0; vpc_bit < 16; vpc_bit++) {
		if (FUNC9(vpc_bit, &vpc1)) {
			switch (vpc_bit) {
			case 9:
				FUNC5(priv);
				break;
			case 13:
			case 11:
			case 8:
			case 7:
			case 6:
				FUNC4(priv, vpc_bit);
				break;
			case 5:
				FUNC6(priv);
				break;
			case 4:
				FUNC0(priv);
				break;
			case 3:
				FUNC3(priv);
				break;
			case 2:
				FUNC1(priv);
				break;
			case 0:
				FUNC2(priv);
				break;
			case 1:
				/* Some IdeaPads report event 1 every ~20
				 * seconds while on battery power; some
				 * report this when changing to/from tablet
				 * mode. Squelch this event.
				 */
				break;
			default:
				FUNC7("Unknown event: %lu\n", vpc_bit);
			}
		}
	}
}