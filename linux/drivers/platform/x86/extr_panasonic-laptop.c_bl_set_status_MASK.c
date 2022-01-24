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
struct pcc_acpi {int* sinf; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SINF_AC_CUR_BRIGHT ; 
 size_t SINF_AC_MAX_BRIGHT ; 
 size_t SINF_AC_MIN_BRIGHT ; 
 int /*<<< orphan*/  SINF_DC_CUR_BRIGHT ; 
 size_t SINF_DC_MIN_BRIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct pcc_acpi*) ; 
 int FUNC1 (struct pcc_acpi*,int /*<<< orphan*/ ,int) ; 
 struct pcc_acpi* FUNC2 (struct backlight_device*) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bd)
{
	struct pcc_acpi *pcc = FUNC2(bd);
	int bright = bd->props.brightness;
	int rc;

	if (!FUNC0(pcc))
		return -EIO;

	if (bright < pcc->sinf[SINF_AC_MIN_BRIGHT])
		bright = pcc->sinf[SINF_AC_MIN_BRIGHT];

	if (bright < pcc->sinf[SINF_DC_MIN_BRIGHT])
		bright = pcc->sinf[SINF_DC_MIN_BRIGHT];

	if (bright < pcc->sinf[SINF_AC_MIN_BRIGHT] ||
	    bright > pcc->sinf[SINF_AC_MAX_BRIGHT])
		return -EINVAL;

	rc = FUNC1(pcc, SINF_AC_CUR_BRIGHT, bright);
	if (rc < 0)
		return rc;

	return FUNC1(pcc, SINF_DC_CUR_BRIGHT, bright);
}