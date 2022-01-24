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
struct loopback_results {void* gbphy_firmware_latency_min; void* gbphy_firmware_latency_max; void* gbphy_firmware_latency_jitter; void* apbridge_unipro_latency_min; void* apbridge_unipro_latency_max; void* apbridge_unipro_latency_jitter; void* throughput_min; void* throughput_max; void* throughput_jitter; void* latency_min; void* latency_max; void* latency_jitter; void* request_min; void* request_max; void* request_jitter; void* gbphy_firmware_latency_avg; void* apbridge_unipro_latency_avg; void* throughput_avg; void* latency_avg; void* request_avg; void* error; } ;
struct loopback_test {int device_count; struct loopback_results aggregate_results; scalar_t__ aggregate_output; struct loopback_device* devices; } ;
struct loopback_device {int /*<<< orphan*/  sysfs_entry; struct loopback_results results; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loopback_test*,int) ; 
 void* FUNC1 (struct loopback_test*) ; 
 void* FUNC2 (struct loopback_test*) ; 
 void* FUNC3 (struct loopback_test*) ; 
 void* FUNC4 (struct loopback_test*) ; 
 void* FUNC5 (struct loopback_test*) ; 
 void* FUNC6 (struct loopback_test*) ; 
 void* FUNC7 (struct loopback_test*) ; 
 void* FUNC8 (struct loopback_test*) ; 
 void* FUNC9 (struct loopback_test*) ; 
 void* FUNC10 (struct loopback_test*) ; 
 void* FUNC11 (struct loopback_test*) ; 
 void* FUNC12 (struct loopback_test*) ; 
 void* FUNC13 (struct loopback_test*) ; 
 void* FUNC14 (struct loopback_test*) ; 
 void* FUNC15 (struct loopback_test*) ; 
 void* FUNC16 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC17 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC18(struct loopback_test *t)
{
	struct loopback_device *d;
	struct loopback_results *r;
	int i;

	for (i = 0; i < t->device_count; i++) {
		if (!FUNC0(t, i))
			continue;

		d = &t->devices[i];
		r = &d->results;

		r->error = FUNC17(d->sysfs_entry, "error");
		r->request_min = FUNC17(d->sysfs_entry, "requests_per_second_min");
		r->request_max = FUNC17(d->sysfs_entry, "requests_per_second_max");
		r->request_avg = FUNC16(d->sysfs_entry, "requests_per_second_avg");

		r->latency_min = FUNC17(d->sysfs_entry, "latency_min");
		r->latency_max = FUNC17(d->sysfs_entry, "latency_max");
		r->latency_avg = FUNC16(d->sysfs_entry, "latency_avg");

		r->throughput_min = FUNC17(d->sysfs_entry, "throughput_min");
		r->throughput_max = FUNC17(d->sysfs_entry, "throughput_max");
		r->throughput_avg = FUNC16(d->sysfs_entry, "throughput_avg");

		r->apbridge_unipro_latency_min =
			FUNC17(d->sysfs_entry, "apbridge_unipro_latency_min");
		r->apbridge_unipro_latency_max =
			FUNC17(d->sysfs_entry, "apbridge_unipro_latency_max");
		r->apbridge_unipro_latency_avg =
			FUNC16(d->sysfs_entry, "apbridge_unipro_latency_avg");

		r->gbphy_firmware_latency_min =
			FUNC17(d->sysfs_entry, "gbphy_firmware_latency_min");
		r->gbphy_firmware_latency_max =
			FUNC17(d->sysfs_entry, "gbphy_firmware_latency_max");
		r->gbphy_firmware_latency_avg =
			FUNC16(d->sysfs_entry, "gbphy_firmware_latency_avg");

		r->request_jitter = r->request_max - r->request_min;
		r->latency_jitter = r->latency_max - r->latency_min;
		r->throughput_jitter = r->throughput_max - r->throughput_min;
		r->apbridge_unipro_latency_jitter =
			r->apbridge_unipro_latency_max - r->apbridge_unipro_latency_min;
		r->gbphy_firmware_latency_jitter =
			r->gbphy_firmware_latency_max - r->gbphy_firmware_latency_min;

	}

	/*calculate the aggregate results of all enabled devices */
	if (t->aggregate_output) {
		r = &t->aggregate_results;

		r->request_min = FUNC12(t);
		r->request_max = FUNC11(t);
		r->request_avg = FUNC10(t);

		r->latency_min = FUNC9(t);
		r->latency_max = FUNC8(t);
		r->latency_avg = FUNC7(t);

		r->throughput_min = FUNC15(t);
		r->throughput_max = FUNC14(t);
		r->throughput_avg = FUNC13(t);

		r->apbridge_unipro_latency_min =
			FUNC3(t);
		r->apbridge_unipro_latency_max =
			FUNC2(t);
		r->apbridge_unipro_latency_avg =
			FUNC1(t);

		r->gbphy_firmware_latency_min =
			FUNC6(t);
		r->gbphy_firmware_latency_max =
			FUNC5(t);
		r->gbphy_firmware_latency_avg =
			FUNC4(t);

		r->request_jitter = r->request_max - r->request_min;
		r->latency_jitter = r->latency_max - r->latency_min;
		r->throughput_jitter = r->throughput_max - r->throughput_min;
		r->apbridge_unipro_latency_jitter =
			r->apbridge_unipro_latency_max - r->apbridge_unipro_latency_min;
		r->gbphy_firmware_latency_jitter =
			r->gbphy_firmware_latency_max - r->gbphy_firmware_latency_min;

	}

	return 0;
}