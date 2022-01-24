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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kbd_token_bits ; 
 int /*<<< orphan*/ * kbd_tokens ; 

__attribute__((used)) static inline void FUNC3(void)
{
	int i;

	for (i = 0; i < FUNC0(kbd_tokens); ++i)
		if (FUNC2(kbd_tokens[i]))
			kbd_token_bits |= FUNC1(i);
}