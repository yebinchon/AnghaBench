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
struct pcap_rtc {int /*<<< orphan*/  pcap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct pcap_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, int pirq, unsigned int en)
{
	struct pcap_rtc *pcap_rtc = FUNC0(dev);

	if (en)
		FUNC2(FUNC3(pcap_rtc->pcap, pirq));
	else
		FUNC1(FUNC3(pcap_rtc->pcap, pirq));

	return 0;
}