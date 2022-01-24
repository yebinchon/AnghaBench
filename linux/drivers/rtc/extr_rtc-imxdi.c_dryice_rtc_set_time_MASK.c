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
struct rtc_time {int dummy; } ;
struct imxdi_dev {scalar_t__ ioaddr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DCR ; 
 int DCR_TCE ; 
 int DCR_TCHL ; 
 int DCR_TCSL ; 
 scalar_t__ DSR ; 
 int DSR_SVF ; 
 scalar_t__ DTCLR ; 
 scalar_t__ DTCMR ; 
 int EPERM ; 
 struct imxdi_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct imxdi_dev*,char*) ; 
 int FUNC2 (struct imxdi_dev*,int,scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct imxdi_dev *imxdi = FUNC0(dev);
	u32 dcr, dsr;
	int rc;

	dcr = FUNC3(imxdi->ioaddr + DCR);
	dsr = FUNC3(imxdi->ioaddr + DSR);

	if (!(dcr & DCR_TCE) || (dsr & DSR_SVF)) {
		if (dcr & DCR_TCHL) {
			/* we are even more out of luck */
			FUNC1(imxdi, "battery");
			return -EPERM;
		}
		if ((dcr & DCR_TCSL) || (dsr & DSR_SVF)) {
			/* we are out of luck for now */
			FUNC1(imxdi, "main");
			return -EPERM;
		}
	}

	/* zero the fractional part first */
	rc = FUNC2(imxdi, 0, DTCLR);
	if (rc != 0)
		return rc;

	rc = FUNC2(imxdi, FUNC4(tm), DTCMR);
	if (rc != 0)
		return rc;

	return FUNC2(imxdi, FUNC3(imxdi->ioaddr + DCR) | DCR_TCE, DCR);
}