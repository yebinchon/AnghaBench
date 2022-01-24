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
typedef  scalar_t__ u8 ;
struct musb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 scalar_t__ FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct musb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct musb*) ; 
 int /*<<< orphan*/  FUNC6 (struct musb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct musb*,scalar_t__) ; 

void FUNC8(struct musb *musb, u8 epnum, u8 transmit)
{
	/* called with controller lock already held */

	if (!epnum) {
		if (!FUNC0(musb)) {
			/* endpoint 0 */
			if (FUNC1(musb))
				FUNC5(musb);
			else
				FUNC2(musb);
		}
	} else {
		/* endpoints 1..15 */
		if (transmit) {
			if (FUNC1(musb))
				FUNC7(musb, epnum);
			else
				FUNC4(musb, epnum);
		} else {
			/* receive */
			if (FUNC1(musb))
				FUNC6(musb, epnum);
			else
				FUNC3(musb, epnum);
		}
	}
}