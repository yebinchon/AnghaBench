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
struct TYPE_2__ {void* tm_sec; void* tm_min; void* tm_hour; void* tm_yday; void* tm_wday; void* tm_mday; void* tm_mon; void* tm_year; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct asm9260_rtc_priv {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ HW_ALDOM ; 
 scalar_t__ HW_ALDOW ; 
 scalar_t__ HW_ALDOY ; 
 scalar_t__ HW_ALHOUR ; 
 scalar_t__ HW_ALMIN ; 
 scalar_t__ HW_ALMON ; 
 scalar_t__ HW_ALSEC ; 
 scalar_t__ HW_ALYEAR ; 
 scalar_t__ HW_AMR ; 
 scalar_t__ HW_CIIR ; 
 struct asm9260_rtc_priv* FUNC0 (struct device*) ; 
 void* FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct asm9260_rtc_priv *priv = FUNC0(dev);

	alrm->time.tm_year = FUNC1(priv->iobase + HW_ALYEAR);
	alrm->time.tm_mon  = FUNC1(priv->iobase + HW_ALMON);
	alrm->time.tm_mday = FUNC1(priv->iobase + HW_ALDOM);
	alrm->time.tm_wday = FUNC1(priv->iobase + HW_ALDOW);
	alrm->time.tm_yday = FUNC1(priv->iobase + HW_ALDOY);
	alrm->time.tm_hour = FUNC1(priv->iobase + HW_ALHOUR);
	alrm->time.tm_min  = FUNC1(priv->iobase + HW_ALMIN);
	alrm->time.tm_sec  = FUNC1(priv->iobase + HW_ALSEC);

	alrm->enabled = FUNC1(priv->iobase + HW_AMR) ? 1 : 0;
	alrm->pending = FUNC1(priv->iobase + HW_CIIR) ? 1 : 0;

	return FUNC2(&alrm->time);
}