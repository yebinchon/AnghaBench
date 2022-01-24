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
struct s3c_rtc {int /*<<< orphan*/  rtc_clk; int /*<<< orphan*/  rtc_src_clk; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ needs_src_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct s3c_rtc *info)
{
	int ret;

	ret = FUNC1(info->rtc_clk);
	if (ret)
		return ret;

	if (info->data->needs_src_clk) {
		ret = FUNC1(info->rtc_src_clk);
		if (ret) {
			FUNC0(info->rtc_clk);
			return ret;
		}
	}
	return 0;
}