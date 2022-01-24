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
struct TYPE_2__ {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_yday; int /*<<< orphan*/  tm_wday; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct asm9260_rtc_priv {scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_AMR_OFF ; 
 scalar_t__ HW_ALDOM ; 
 scalar_t__ HW_ALDOW ; 
 scalar_t__ HW_ALDOY ; 
 scalar_t__ HW_ALHOUR ; 
 scalar_t__ HW_ALMIN ; 
 scalar_t__ HW_ALMON ; 
 scalar_t__ HW_ALSEC ; 
 scalar_t__ HW_ALYEAR ; 
 scalar_t__ HW_AMR ; 
 struct asm9260_rtc_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct asm9260_rtc_priv *priv = FUNC0(dev);

	FUNC1(alrm->time.tm_year, priv->iobase + HW_ALYEAR);
	FUNC1(alrm->time.tm_mon,  priv->iobase + HW_ALMON);
	FUNC1(alrm->time.tm_mday, priv->iobase + HW_ALDOM);
	FUNC1(alrm->time.tm_wday, priv->iobase + HW_ALDOW);
	FUNC1(alrm->time.tm_yday, priv->iobase + HW_ALDOY);
	FUNC1(alrm->time.tm_hour, priv->iobase + HW_ALHOUR);
	FUNC1(alrm->time.tm_min,  priv->iobase + HW_ALMIN);
	FUNC1(alrm->time.tm_sec,  priv->iobase + HW_ALSEC);

	FUNC1(alrm->enabled ? 0 : BM_AMR_OFF, priv->iobase + HW_AMR);

	return 0;
}