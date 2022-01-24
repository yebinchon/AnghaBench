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
struct pcc_acpi {int* sinf; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 size_t SINF_AC_CUR_BRIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct pcc_acpi*) ; 
 struct pcc_acpi* FUNC1 (struct backlight_device*) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *bd)
{
	struct pcc_acpi *pcc = FUNC1(bd);

	if (!FUNC0(pcc))
		return -EIO;

	return pcc->sinf[SINF_AC_CUR_BRIGHT];
}