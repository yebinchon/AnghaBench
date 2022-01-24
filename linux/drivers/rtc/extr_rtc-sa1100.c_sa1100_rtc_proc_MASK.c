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
struct sa1100_rtc {int /*<<< orphan*/  rtsr; int /*<<< orphan*/  rttr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sa1100_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct seq_file *seq)
{
	struct sa1100_rtc *info = FUNC0(dev);

	FUNC2(seq, "trim/divider\t\t: 0x%08x\n", FUNC1(info->rttr));
	FUNC2(seq, "RTSR\t\t\t: 0x%08x\n", FUNC1(info->rtsr));

	return 0;
}