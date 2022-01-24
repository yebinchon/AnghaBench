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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct gb_loopback {scalar_t__ iteration_count; scalar_t__ iteration_max; scalar_t__ requests_completed; int /*<<< orphan*/  ts; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ NSEC_PER_SEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_loopback*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_loopback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_loopback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct gb_loopback *gb, bool error)
{
	u64 nlat;
	u32 lat;
	ktime_t te;

	if (!error) {
		gb->requests_completed++;
		FUNC1(gb);
	}

	te = FUNC5();
	nlat = FUNC0(gb->ts, te);
	if (nlat >= NSEC_PER_SEC || gb->iteration_count == gb->iteration_max) {
		lat = FUNC2(nlat);

		FUNC4(gb, lat);
		FUNC3(gb, lat);

		if (gb->iteration_count != gb->iteration_max) {
			gb->ts = te;
			gb->requests_completed = 0;
		}
	}
}