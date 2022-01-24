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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct loopback_test {char* test_name; int size; int iteration_max; int device_count; int /*<<< orphan*/  porcelain; scalar_t__ file_output; int /*<<< orphan*/  aggregate_results; scalar_t__ aggregate_output; TYPE_1__* devices; } ;
typedef  int /*<<< orphan*/  file_name ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  results; } ;

/* Variables and functions */
 int CSV_MAX_LINE ; 
 int MAX_SYSFS_PATH ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct loopback_test*,int) ; 
 int FUNC3 (struct loopback_test*,int /*<<< orphan*/ *,char*,char*,int,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct tm* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int,char*,int) ; 

__attribute__((used)) static int FUNC10(struct loopback_test *t)
{
	int fd, i, len, ret;
	struct tm tm;
	time_t local_time;
	char file_name[MAX_SYSFS_PATH];
	char data[CSV_MAX_LINE];

	local_time = FUNC8(NULL);
	tm = *FUNC5(&local_time);

	/*
	 * file name will test_name_size_iteration_max.csv
	 * every time the same test with the same parameters is run we will then
	 * append to the same CSV with datestamp - representing each test
	 * dataset.
	 */
	if (t->file_output && !t->porcelain) {
		FUNC7(file_name, sizeof(file_name), "%s_%d_%d.csv",
			 t->test_name, t->size, t->iteration_max);

		fd = FUNC6(file_name, O_WRONLY | O_CREAT | O_APPEND, 0644);
		if (fd < 0) {
			FUNC4(stderr, "unable to open %s for appendation\n", file_name);
			FUNC0();
		}

	}
	for (i = 0; i < t->device_count; i++) {
		if (!FUNC2(t, i))
			continue;

		len = FUNC3(t, &t->devices[i].results,
				    t->devices[i].name,
				    data, sizeof(data), &tm);
		if (t->file_output && !t->porcelain) {
			ret = FUNC9(fd, data, len);
			if (ret == -1)
				FUNC4(stderr, "unable to write %d bytes to csv.\n", len);
		}

	}


	if (t->aggregate_output) {
		len = FUNC3(t, &t->aggregate_results, "aggregate",
				    data, sizeof(data), &tm);
		if (t->file_output && !t->porcelain) {
			ret = FUNC9(fd, data, len);
			if (ret == -1)
				FUNC4(stderr, "unable to write %d bytes to csv.\n", len);
		}
	}

	if (t->file_output && !t->porcelain)
		FUNC1(fd);

	return 0;
}