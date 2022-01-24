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
struct seq_file {int dummy; } ;
struct sam9_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int AT91_RTT_RTTINCIEN ; 
 int /*<<< orphan*/  MR ; 
 struct sam9_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct sam9_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct seq_file *seq)
{
	struct sam9_rtc *rtc = FUNC0(dev);
	u32 mr = FUNC1(rtc, MR);

	FUNC2(seq, "update_IRQ\t: %s\n",
		   (mr & AT91_RTT_RTTINCIEN) ? "yes" : "no");
	return 0;
}