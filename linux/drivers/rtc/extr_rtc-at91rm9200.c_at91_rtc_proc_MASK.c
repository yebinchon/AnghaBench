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
struct seq_file {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long AT91_RTC_ACKUPD ; 
 unsigned long AT91_RTC_SECEV ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct seq_file *seq)
{
	unsigned long imr = FUNC0();

	FUNC1(seq, "update_IRQ\t: %s\n",
			(imr & AT91_RTC_ACKUPD) ? "yes" : "no");
	FUNC1(seq, "periodic_IRQ\t: %s\n",
			(imr & AT91_RTC_SECEV) ? "yes" : "no");

	return 0;
}