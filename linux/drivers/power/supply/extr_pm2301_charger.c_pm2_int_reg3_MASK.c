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
struct pm2xxx_charger {int /*<<< orphan*/  dev; int /*<<< orphan*/  failure_case; } ;

/* Variables and functions */
 int PM2XXX_INT4_ITBATTFULL ; 
 int PM2XXX_INT4_ITCHARGINGON ; 
 int PM2XXX_INT4_ITCVPHASE ; 
 int PM2XXX_INT4_ITVPWR1OVV ; 
 int PM2XXX_INT4_ITVPWR2OVV ; 
 int PM2XXX_INT4_ITVRESUME ; 
 int PM2XXX_INT4_S_ITBATTEMPCOLD ; 
 int PM2XXX_INT4_S_ITBATTEMPHOT ; 
 int /*<<< orphan*/  VPWR_OVV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct pm2xxx_charger*,int) ; 
 int FUNC2 (struct pm2xxx_charger*,int) ; 

__attribute__((used)) static int FUNC3(void *pm2_data, int val)
{
	struct pm2xxx_charger *pm2 = pm2_data;
	int ret = 0;

	if (val & (PM2XXX_INT4_ITCHARGINGON)) {
		FUNC0(pm2->dev ,
			"chargind operation has started\n");
	}

	if (val & (PM2XXX_INT4_ITVRESUME)) {
		FUNC0(pm2->dev,
			"battery discharged down to VResume threshold\n");
	}

	if (val & (PM2XXX_INT4_ITBATTFULL)) {
		FUNC0(pm2->dev , "battery fully detected\n");
	}

	if (val & (PM2XXX_INT4_ITCVPHASE)) {
		FUNC0(pm2->dev, "CV phase enter with 0.5C charging\n");
	}

	if (val & (PM2XXX_INT4_ITVPWR2OVV | PM2XXX_INT4_ITVPWR1OVV)) {
		pm2->failure_case = VPWR_OVV;
		ret = FUNC2(pm2, val &
			(PM2XXX_INT4_ITVPWR2OVV | PM2XXX_INT4_ITVPWR1OVV));
		FUNC0(pm2->dev, "VPWR/VSYSTEM overvoltage detected\n");
	}

	if (val & (PM2XXX_INT4_S_ITBATTEMPCOLD |
				PM2XXX_INT4_S_ITBATTEMPHOT)) {
		ret = FUNC1(pm2, val &
			(PM2XXX_INT4_S_ITBATTEMPCOLD |
			PM2XXX_INT4_S_ITBATTEMPHOT));
		FUNC0(pm2->dev, "BTEMP is too Low/High\n");
	}

	return ret;
}