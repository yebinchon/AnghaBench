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
typedef  int /*<<< orphan*/  u32 ;
struct gb_loopback {int /*<<< orphan*/  gbphy_latency_ts; int /*<<< orphan*/  gbphy_firmware_latency; int /*<<< orphan*/  apbridge_latency_ts; int /*<<< orphan*/  apbridge_unipro_latency; int /*<<< orphan*/  kfifo_lat; int /*<<< orphan*/  latency; int /*<<< orphan*/  elapsed_nsecs; } ;
typedef  int /*<<< orphan*/  lat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static void FUNC3(struct gb_loopback *gb)
{
	u32 lat;

	/* Express latency in terms of microseconds */
	lat = FUNC0(gb->elapsed_nsecs);

	/* Log latency stastic */
	FUNC1(&gb->latency, lat);

	/* Raw latency log on a per thread basis */
	FUNC2(&gb->kfifo_lat, (unsigned char *)&lat, sizeof(lat));

	/* Log the firmware supplied latency values */
	FUNC1(&gb->apbridge_unipro_latency,
				 gb->apbridge_latency_ts);
	FUNC1(&gb->gbphy_firmware_latency,
				 gb->gbphy_latency_ts);
}