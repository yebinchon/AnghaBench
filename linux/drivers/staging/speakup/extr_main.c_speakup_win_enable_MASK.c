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
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NO_WINDOW ; 
 int /*<<< orphan*/  MSG_WINDOW_SILENCED ; 
 int /*<<< orphan*/  MSG_WINDOW_SILENCE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int win_enabled ; 
 int win_start ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc)
{
	if (win_start < 2) {
		FUNC1("%s\n", FUNC0(MSG_NO_WINDOW));
		return;
	}
	win_enabled ^= 1;
	if (win_enabled)
		FUNC1("%s\n", FUNC0(MSG_WINDOW_SILENCED));
	else
		FUNC1("%s\n", FUNC0(MSG_WINDOW_SILENCE_DISABLED));
}