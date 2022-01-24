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
typedef  int u32 ;
struct bcm2835_pinctrl {int /*<<< orphan*/  dev; } ;
typedef  enum bcm2835_fsel { ____Placeholder_bcm2835_fsel } bcm2835_fsel ;

/* Variables and functions */
 int BCM2835_FSEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * bcm2835_functions ; 
 int FUNC2 (struct bcm2835_pinctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline enum bcm2835_fsel FUNC4(
		struct bcm2835_pinctrl *pc, unsigned pin)
{
	u32 val = FUNC2(pc, FUNC0(pin));
	enum bcm2835_fsel status = (val >> FUNC1(pin)) & BCM2835_FSEL_MASK;

	FUNC3(pc->dev, "get %08x (%u => %s)\n", val, pin,
			bcm2835_functions[status]);

	return status;
}