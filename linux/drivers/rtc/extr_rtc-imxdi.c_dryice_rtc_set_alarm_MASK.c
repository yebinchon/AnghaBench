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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct imxdi_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCAMR ; 
 int /*<<< orphan*/  DIER_CAIE ; 
 struct imxdi_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct imxdi_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imxdi_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct imxdi_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct imxdi_dev *imxdi = FUNC0(dev);
	int rc;

	/* write the new alarm time */
	rc = FUNC3(imxdi, FUNC4(&alarm->time), DCAMR);
	if (rc)
		return rc;

	if (alarm->enabled)
		FUNC2(imxdi, DIER_CAIE);  /* enable alarm intr */
	else
		FUNC1(imxdi, DIER_CAIE); /* disable alarm intr */

	return 0;
}