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
struct gb_loopback_stats {int /*<<< orphan*/  min; } ;
struct gb_loopback {int /*<<< orphan*/  ts; scalar_t__ gbphy_latency_ts; scalar_t__ apbridge_latency_ts; int /*<<< orphan*/  gbphy_firmware_latency; int /*<<< orphan*/  apbridge_unipro_latency; int /*<<< orphan*/  requests_per_second; int /*<<< orphan*/  throughput; int /*<<< orphan*/  latency; } ;

/* Variables and functions */
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gb_loopback_stats*,int) ; 

__attribute__((used)) static void FUNC2(struct gb_loopback *gb)
{
	struct gb_loopback_stats reset = {
		.min = U32_MAX,
	};

	/* Reset per-connection stats */
	FUNC1(&gb->latency, &reset,
	       sizeof(struct gb_loopback_stats));
	FUNC1(&gb->throughput, &reset,
	       sizeof(struct gb_loopback_stats));
	FUNC1(&gb->requests_per_second, &reset,
	       sizeof(struct gb_loopback_stats));
	FUNC1(&gb->apbridge_unipro_latency, &reset,
	       sizeof(struct gb_loopback_stats));
	FUNC1(&gb->gbphy_firmware_latency, &reset,
	       sizeof(struct gb_loopback_stats));

	/* Should be initialized at least once per transaction set */
	gb->apbridge_latency_ts = 0;
	gb->gbphy_latency_ts = 0;
	gb->ts = FUNC0(0, 0);
}