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
struct cpcap_battery_state_data {int /*<<< orphan*/  temperature; int /*<<< orphan*/  cc; int /*<<< orphan*/  counter_uah; int /*<<< orphan*/  current_ua; int /*<<< orphan*/  voltage; int /*<<< orphan*/  time; } ;
struct cpcap_battery_ddata {int dummy; } ;
typedef  int /*<<< orphan*/  state ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ CPCAP_BATTERY_CC_SAMPLE_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC0 (struct cpcap_battery_ddata*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpcap_battery_ddata*) ; 
 struct cpcap_battery_state_data* FUNC2 (struct cpcap_battery_ddata*) ; 
 struct cpcap_battery_state_data* FUNC3 (struct cpcap_battery_ddata*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpcap_battery_ddata*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct cpcap_battery_ddata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cpcap_battery_state_data*,struct cpcap_battery_state_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cpcap_battery_state_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct cpcap_battery_ddata *ddata)
{
	struct cpcap_battery_state_data state, *latest, *previous;
	ktime_t now;
	int error;

	FUNC10(&state, 0, sizeof(state));
	now = FUNC6();

	latest = FUNC2(ddata);
	if (latest) {
		s64 delta_ms = FUNC8(FUNC7(now, latest->time));

		if (delta_ms < CPCAP_BATTERY_CC_SAMPLE_PERIOD_MS)
			return delta_ms;
	}

	state.time = now;
	state.voltage = FUNC1(ddata);
	state.current_ua = FUNC0(ddata);
	state.counter_uah = FUNC4(ddata, &state.cc);

	error = FUNC5(ddata,
						  &state.temperature);
	if (error)
		return error;

	previous = FUNC3(ddata);
	FUNC9(previous, latest, sizeof(*previous));
	FUNC9(latest, &state, sizeof(*latest));

	return 0;
}