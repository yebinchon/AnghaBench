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
typedef  int /*<<< orphan*/  time64_t ;
struct tm {int tm_year; unsigned int tm_hour; unsigned int tm_min; unsigned int tm_sec; unsigned int tm_mon; unsigned int tm_mday; } ;
struct pqi_ctrl_info {int dummy; } ;
struct bmic_host_wellness_time {char* start_tag; char* time_tag; char* dont_write_tag; char* end_tag; void** time; int /*<<< orphan*/  time_length; } ;
struct TYPE_2__ {int tz_minuteswest; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct bmic_host_wellness_time*) ; 
 struct bmic_host_wellness_time* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct pqi_ctrl_info*,struct bmic_host_wellness_time*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__ sys_tz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct tm*) ; 

__attribute__((used)) static int FUNC7(
	struct pqi_ctrl_info *ctrl_info)
{
	int rc;
	struct bmic_host_wellness_time *buffer;
	size_t buffer_length;
	time64_t local_time;
	unsigned int year;
	struct tm tm;

	buffer_length = sizeof(*buffer);

	buffer = FUNC2(buffer_length, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	buffer->start_tag[0] = '<';
	buffer->start_tag[1] = 'H';
	buffer->start_tag[2] = 'W';
	buffer->start_tag[3] = '>';
	buffer->time_tag[0] = 'T';
	buffer->time_tag[1] = 'D';
	FUNC5(sizeof(buffer->time),
		&buffer->time_length);

	local_time = FUNC3();
	FUNC6(local_time, -sys_tz.tz_minuteswest * 60, &tm);
	year = tm.tm_year + 1900;

	buffer->time[0] = FUNC0(tm.tm_hour);
	buffer->time[1] = FUNC0(tm.tm_min);
	buffer->time[2] = FUNC0(tm.tm_sec);
	buffer->time[3] = 0;
	buffer->time[4] = FUNC0(tm.tm_mon + 1);
	buffer->time[5] = FUNC0(tm.tm_mday);
	buffer->time[6] = FUNC0(year / 100);
	buffer->time[7] = FUNC0(year % 100);

	buffer->dont_write_tag[0] = 'D';
	buffer->dont_write_tag[1] = 'W';
	buffer->end_tag[0] = 'Z';
	buffer->end_tag[1] = 'Z';

	rc = FUNC4(ctrl_info, buffer, buffer_length);

	FUNC1(buffer);

	return rc;
}