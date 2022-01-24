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
struct cpcap_battery_state_data {int dummy; } ;
struct cpcap_battery_ddata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_BATTERY_STATE_LATEST ; 
 struct cpcap_battery_state_data* FUNC0 (struct cpcap_battery_ddata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cpcap_battery_state_data *
FUNC1(struct cpcap_battery_ddata *ddata)
{
	return FUNC0(ddata, CPCAP_BATTERY_STATE_LATEST);
}