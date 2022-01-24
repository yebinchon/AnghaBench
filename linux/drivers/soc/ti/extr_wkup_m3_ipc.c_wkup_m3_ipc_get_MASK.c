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
struct wkup_m3_ipc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct wkup_m3_ipc* m3_ipc_state ; 

struct wkup_m3_ipc *FUNC1(void)
{
	if (m3_ipc_state)
		FUNC0(m3_ipc_state->dev);
	else
		return NULL;

	return m3_ipc_state;
}