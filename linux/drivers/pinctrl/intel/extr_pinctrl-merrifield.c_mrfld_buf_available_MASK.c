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
struct mrfld_pinctrl {int dummy; } ;
struct mrfld_family {int /*<<< orphan*/  protected; } ;

/* Variables and functions */
 struct mrfld_family* FUNC0 (struct mrfld_pinctrl*,unsigned int) ; 

__attribute__((used)) static bool FUNC1(struct mrfld_pinctrl *mp, unsigned int pin)
{
	const struct mrfld_family *family;

	family = FUNC0(mp, pin);
	if (!family)
		return false;

	return !family->protected;
}