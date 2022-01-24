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
struct rtc_wkalrm {int /*<<< orphan*/  time; } ;
struct pcap_rtc {int /*<<< orphan*/  pcap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_REG_RTC_DAYA ; 
 int /*<<< orphan*/  PCAP_REG_RTC_TODA ; 
 unsigned long SEC_PER_DAY ; 
 struct pcap_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct pcap_rtc *pcap_rtc = FUNC0(dev);
	unsigned long secs = FUNC2(&alrm->time);
	u32 tod, days;

	tod = secs % SEC_PER_DAY;
	FUNC1(pcap_rtc->pcap, PCAP_REG_RTC_TODA, tod);

	days = secs / SEC_PER_DAY;
	FUNC1(pcap_rtc->pcap, PCAP_REG_RTC_DAYA, days);

	return 0;
}