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
typedef  unsigned long u32 ;
struct rtc_time {int dummy; } ;
struct pcap_rtc {int /*<<< orphan*/  pcap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_REG_RTC_DAY ; 
 int /*<<< orphan*/  PCAP_REG_RTC_TOD ; 
 unsigned long PCAP_RTC_DAY_MASK ; 
 unsigned long PCAP_RTC_TOD_MASK ; 
 unsigned long SEC_PER_DAY ; 
 struct pcap_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct pcap_rtc *pcap_rtc = FUNC0(dev);
	unsigned long secs;
	u32 tod, days;

	FUNC1(pcap_rtc->pcap, PCAP_REG_RTC_TOD, &tod);
	secs = tod & PCAP_RTC_TOD_MASK;

	FUNC1(pcap_rtc->pcap, PCAP_REG_RTC_DAY, &days);
	secs += (days & PCAP_RTC_DAY_MASK) * SEC_PER_DAY;

	FUNC2(secs, tm);

	return 0;
}