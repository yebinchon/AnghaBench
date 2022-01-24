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

/* Variables and functions */
 scalar_t__ MSG_KEYNAMES_START ; 
 scalar_t__ MSG_STATES_START ; 
 int* masks ; 
 int num_key_names ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int key)
{
	int i, state = key >> 8;

	key &= 0xff;
	for (i = 0; i < 6; i++) {
		if (state & masks[i])
			FUNC1(" %s", FUNC0(MSG_STATES_START + i));
	}
	if ((key > 0) && (key <= num_key_names))
		FUNC1(" %s\n",
			     FUNC0(MSG_KEYNAMES_START + (key - 1)));
}