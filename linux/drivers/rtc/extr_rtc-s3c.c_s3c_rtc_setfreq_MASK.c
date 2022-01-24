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
struct s3c_rtc {int /*<<< orphan*/  pie_lock; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_freq ) (struct s3c_rtc*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c_rtc*) ; 
 int FUNC2 (struct s3c_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct s3c_rtc*,int) ; 

__attribute__((used)) static int FUNC6(struct s3c_rtc *info, int freq)
{
	int ret;

	if (!FUNC0(freq))
		return -EINVAL;

	ret = FUNC2(info);
	if (ret)
		return ret;
	FUNC3(&info->pie_lock);

	if (info->data->set_freq)
		info->data->set_freq(info, freq);

	FUNC4(&info->pie_lock);
	FUNC1(info);

	return 0;
}