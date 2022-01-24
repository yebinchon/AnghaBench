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
struct enclosure_device {int dummy; } ;
struct enclosure_component {int power_status; } ;

/* Variables and functions */
 unsigned char* FUNC0 (struct enclosure_device*,struct enclosure_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct enclosure_device*) ; 

__attribute__((used)) static void FUNC2(struct enclosure_device *edev,
				 struct enclosure_component *ecomp)
{
	unsigned char *desc;

	if (!FUNC1(edev)) {
		ecomp->power_status = 0;
		return;
	}

	desc = FUNC0(edev, ecomp);
	if (desc)
		ecomp->power_status = (desc[3] & 0x10) ? 0 : 1;
}