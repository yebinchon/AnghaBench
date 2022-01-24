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
struct seq_file {int dummy; } ;
struct s3c_rtc {TYPE_1__* data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_tick ) (struct s3c_rtc*,struct seq_file*) ;} ;

/* Variables and functions */
 struct s3c_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c_rtc*) ; 
 int FUNC2 (struct s3c_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c_rtc*,struct seq_file*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct seq_file *seq)
{
	struct s3c_rtc *info = FUNC0(dev);
	int ret;

	ret = FUNC2(info);
	if (ret)
		return ret;

	if (info->data->enable_tick)
		info->data->enable_tick(info, seq);

	FUNC1(info);

	return 0;
}